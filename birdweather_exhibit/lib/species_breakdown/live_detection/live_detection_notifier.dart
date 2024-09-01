import "dart:async";

import "package:birdweather_exhibit/services/bird_weather_service.dart";
import "package:birdweather_exhibit/species_breakdown/live_detection/live_detection_state.dart";
import "package:birdweather_exhibit/utils/utils.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";

part "live_detection_notifier.g.dart";

@Riverpod(keepAlive: true)
class LiveDetectionNotifier extends _$LiveDetectionNotifier {
  Timer? _timer;

  @override
  FutureOr<LiveDetectionState> build() async {
    final birdWeatherService = ref.read(birdWeatherServiceProvider);
    final detectionData = await birdWeatherService.getDetectionData();
    final detection = detectionData.detections.nodes!.first;
    final isLive = isNewerThan(detection!.timestamp!, 1);
    _startNewDetectionPolling();

    return LiveDetectionState.loaded(
      detection: detection,
      isLive: isLive,
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
      final detectionData = await birdWeatherService.getDetectionData();
      final newDetection = detectionData.detections.nodes!.first;
      final currentDetection = currentState.detection;
      if (newDetection!.id == currentDetection!.id) {
        // This is the same detection, but we'll turn off isLive if it is older than 2 minutes
        if (isOlderThan(currentDetection.timestamp!, 2)) {
          state = AsyncData(currentState.copyWith(
            isLive: false,
          ));
        } else {
          state = AsyncData(currentState.copyWith(
            isLive: true,
          ));
        }
      } else {
        // New detection
        state = AsyncData(LiveDetectionState.loaded(
          detection: newDetection,
          isLive: true,
        ));
      }
    } else {
      // If for some reason we have not yet successfully loaded data, invalidate state.
      ref.invalidateSelf();
    }
  }
}
