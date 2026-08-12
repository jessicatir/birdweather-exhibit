import "dart:async";

import "package:birdweather_exhibit/config/species_overrides.dart";
import "package:birdweather_exhibit/services/bird_weather_service.dart";
import "package:birdweather_exhibit/species_information/top_species/top_species_state.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";

part "top_species_notifier.g.dart";

// Scoped per station via its dependency on birdWeatherService (which depends on
// the per-station stationConfig), so each station keeps its own top-species data.
@Riverpod(keepAlive: true, dependencies: [birdWeatherService])
class TopSpeciesNotifier extends _$TopSpeciesNotifier {
  Timer? _timer;

  @override
  FutureOr<TopSpeciesState> build() async {
    final birdWeatherService = ref.read(birdWeatherServiceProvider);
    final topSpecies = await birdWeatherService.getTopBirdWeatherSpecies();
    // Merge/rename species per the configured exceptions (e.g. Cordilleran +
    // Pacific-slope Flycatcher -> Western Flycatcher with combined counts).
    final mergedTopSpecies = applyOverridesToTopSpecies(topSpecies);
    final sensorData = await birdWeatherService.getStationSensorData();
    final lastUpdated = DateTime.now();
    _autoUpdateTopDetections();
    return TopSpeciesState(
      topSpecies: mergedTopSpecies,
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
