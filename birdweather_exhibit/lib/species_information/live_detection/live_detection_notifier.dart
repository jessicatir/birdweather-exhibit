import "dart:async";

import "package:birdweather_exhibit/config/species_overrides.dart";
import "package:birdweather_exhibit/graphql/mobileDetections.graphql.dart";
import "package:birdweather_exhibit/services/bird_weather_service.dart";
import "package:birdweather_exhibit/providers/species_description_provider.dart";
import "package:birdweather_exhibit/species_information/live_detection/live_detection_state.dart";
import "package:birdweather_exhibit/utils/utils.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";

part "live_detection_notifier.g.dart";

// Scoped per station via its dependency on birdWeatherService (which depends on
// the per-station stationConfig), so each station keeps its own recent detections.
@Riverpod(keepAlive: true, dependencies: [birdWeatherService])
class LiveDetectionNotifier extends _$LiveDetectionNotifier {
  Timer? _timer;
  List<DetectionWithStatus> _localDetectionList = [];

  @override
  FutureOr<LiveDetectionState> build() async {
    final birdWeatherService = ref.read(birdWeatherServiceProvider);
    // Fetch a wide window of recent detections so we can still surface 3
    // distinct species when one species floods the most recent detections.
    final detectionData = await birdWeatherService.getDetectionData(limit: 50);

    // Initialize the local list with the first 3 unique species
    final allDetections =
        detectionData.detections.nodes!.where((d) => d != null).toList();
    _localDetectionList = await _initializeLocalList(allDetections);

    _startNewDetectionPolling();

    return LiveDetectionState.loaded(
      recentDetections: _localDetectionList,
    );
  }

  void _startNewDetectionPolling() {
    _timer?.cancel();

    _timer = Timer.periodic(const Duration(seconds: 30), (timer) async {
      _checkForNewDetection();
    });

    ref.onDispose(() {
      _timer?.cancel();
    });
  }

  void _checkForNewDetection() async {
    final currentState = await future;
    if (currentState is LiveDetectionLoadedState) {
      final birdWeatherService = ref.read(birdWeatherServiceProvider);
      final detectionData =
          await birdWeatherService.getDetectionData(limit: 50);

      // Get all new detections
      final allDetections =
          detectionData.detections.nodes!.where((d) => d != null).toList();

      // Update the local list with any new detections
      await _updateLocalListWithNewDetections(allDetections);

      // Update live status for all detections in local list
      _updateLiveStatus();

      // Update state with the current local list
      state = AsyncData(LiveDetectionState.loaded(
        recentDetections: List.from(_localDetectionList),
      ));
    } else {
      // If for some reason we have not yet successfully loaded data, invalidate state.
      ref.invalidateSelf();
    }
  }

  Future<List<DetectionWithStatus>> _initializeLocalList(
      List<Query$MobileDetections$detections$nodes?> allDetections) async {
    final Map<String, Query$MobileDetections$detections$nodes> uniqueSpecies =
        {};

    // Get unique species (newest detection for each species). Merged species
    // (per the overrides) share a canonical key so they collapse to one card.
    for (final detection in allDetections) {
      if (detection == null) continue;

      final speciesKey = canonicalSpeciesKey(
          detection.species.commonName, detection.species.id);
      final timestamp = detection.timestamp!;

      if (!uniqueSpecies.containsKey(speciesKey) ||
          DateTime.parse(timestamp)
              .isAfter(DateTime.parse(uniqueSpecies[speciesKey]!.timestamp!))) {
        uniqueSpecies[speciesKey] = detection;
      }
    }

    // Sort by timestamp (newest first) and take up to 3
    final sortedDetections = uniqueSpecies.values.toList();
    sortedDetections.sort((a, b) =>
        DateTime.parse(b.timestamp!).compareTo(DateTime.parse(a.timestamp!)));

    // Resolve descriptions for all detections
    final detectionList = <DetectionWithStatus>[];
    final descriptionProvider = ref.read(speciesDescriptionProviderProvider);

    for (final detection in sortedDetections.take(3)) {
      final isLive = isNewerThan(detection.timestamp!, 2);
      final resolvedDescription = await descriptionProvider.resolveDescription(
        detection.species.id,
        detection.species.wikipediaSummary,
      );

      detectionList.add(DetectionWithStatus(
        detection: detection,
        isLive: isLive,
        resolvedDescription: resolvedDescription,
      ));
    }

    return detectionList;
  }

  /// These are the rules for determining a new detection:
  /// 1. If the species is already in the local list, only replace it if the new detection is newer
  /// 2. If the species is not in the local list and there is room (less than 3 detections), add it
  /// 3. If the species is not in the local list and the list is full, replace the oldest detection if the new one is newer
  Future<void> _updateLocalListWithNewDetections(
      List<Query$MobileDetections$detections$nodes?> allDetections) async {
    final descriptionProvider = ref.read(speciesDescriptionProviderProvider);

    for (final detection in allDetections) {
      if (detection == null) continue;

      final speciesKey = canonicalSpeciesKey(
          detection.species.commonName, detection.species.id);
      final timestamp = detection.timestamp!;

      // Check if this species is already in our local list (canonical key so
      // merged species are matched together).
      final existingIndex = _localDetectionList.indexWhere((d) =>
          canonicalSpeciesKey(
              d.detection.species.commonName, d.detection.species.id) ==
          speciesKey);

      if (existingIndex != -1) {
        // Species exists in local list - only replace if this detection is newer
        final existingTimestamp =
            _localDetectionList[existingIndex].detection.timestamp!;
        if (DateTime.parse(timestamp)
            .isAfter(DateTime.parse(existingTimestamp))) {
          final resolvedDescription =
              await descriptionProvider.resolveDescription(
            detection.species.id,
            detection.species.wikipediaSummary,
          );

          _localDetectionList[existingIndex] = DetectionWithStatus(
            detection: detection,
            isLive: isNewerThan(timestamp, 2),
            resolvedDescription: resolvedDescription,
          );
        }
      } else if (_localDetectionList.length < 3) {
        // New species and we have room - add it
        final resolvedDescription =
            await descriptionProvider.resolveDescription(
          detection.species.id,
          detection.species.wikipediaSummary,
        );

        _localDetectionList.add(DetectionWithStatus(
          detection: detection,
          isLive: isNewerThan(timestamp, 2),
          resolvedDescription: resolvedDescription,
        ));
      } else {
        // New species but list is full - replace oldest if this is newer
        final oldestIndex = _getOldestDetectionIndex();
        final oldestTimestamp =
            _localDetectionList[oldestIndex].detection.timestamp!;

        if (DateTime.parse(timestamp)
            .isAfter(DateTime.parse(oldestTimestamp))) {
          final resolvedDescription =
              await descriptionProvider.resolveDescription(
            detection.species.id,
            detection.species.wikipediaSummary,
          );

          _localDetectionList[oldestIndex] = DetectionWithStatus(
            detection: detection,
            isLive: isNewerThan(timestamp, 2),
            resolvedDescription: resolvedDescription,
          );
        }
      }
    }

    // Sort the list by timestamp (newest first)
    _localDetectionList.sort((a, b) => DateTime.parse(b.detection.timestamp!)
        .compareTo(DateTime.parse(a.detection.timestamp!)));
  }

  int _getOldestDetectionIndex() {
    int oldestIndex = 0;
    DateTime oldestTime =
        DateTime.parse(_localDetectionList[0].detection.timestamp!);

    for (int i = 1; i < _localDetectionList.length; i++) {
      final currentTime =
          DateTime.parse(_localDetectionList[i].detection.timestamp!);
      if (currentTime.isBefore(oldestTime)) {
        oldestTime = currentTime;
        oldestIndex = i;
      }
    }

    return oldestIndex;
  }

  void _updateLiveStatus() {
    for (int i = 0; i < _localDetectionList.length; i++) {
      final detection = _localDetectionList[i];
      final newLiveStatus = isNewerThan(detection.detection.timestamp!, 2);

      if (detection.isLive != newLiveStatus) {
        _localDetectionList[i] = detection.copyWith(isLive: newLiveStatus);
      }
    }
  }
}
