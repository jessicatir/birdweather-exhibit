import "dart:async";

import "package:birdweather_exhibit/services/bird_weather_service.dart";
import "package:birdweather_exhibit/species_breakdown/top_species/top_species_state.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";

part "top_species_notifier.g.dart";

@riverpod
class TopSpeciesNotifier extends _$TopSpeciesNotifier {
  Timer? _timer;

  @override
  FutureOr<TopSpeciesState> build() async {
    final birdWeatherService = ref.read(birdWeatherServiceProvider);
    final topSpecies = await birdWeatherService.getTopBirdWeatherSpecies();
    final sensorData = await birdWeatherService.getStationSensorData();
    //final detectionData = await birdWeatherService.getDetectionData();
    final lastUpdated = DateTime.now();
    _autoUpdateTopDetections();
    return TopSpeciesState(
      topSpecies: topSpecies,
      lastUpdated: lastUpdated,
      sensorData: sensorData,
    );
  }

  void _autoUpdateTopDetections() {
    _timer?.cancel();

    _timer = Timer.periodic(const Duration(minutes: 15), (timer) async {
      ref.invalidateSelf();
    });

    ref.onDispose(() {
      _timer?.cancel();
    });
  }

  Future<void> updateTopSpecies() async {}
}
