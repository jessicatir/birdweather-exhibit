import 'package:birdweather_exhibit/services/bird_weather_service.dart';
import 'package:birdweather_exhibit/species_breakdown/top_species/top_species_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part "top_species_notifier.g.dart";

@riverpod
class TopSpeciesNotifier extends _$TopSpeciesNotifier {
  @override
  FutureOr<TopSpeciesState> build() async {
    //state = const AsyncLoading();
    final birdWeatherService = ref.read(birdWeatherServiceProvider);
    final topSpecies = await birdWeatherService.getTopBirdWeatherSpecies();
    final sensorData = await birdWeatherService.getStationSensorData();
    final detectionData = await birdWeatherService.getDetectionData();
    return TopSpeciesState(topSpecies: topSpecies);
  }

  Future<void> updateTopSpecies() async {}
}
