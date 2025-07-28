import "package:birdweather_exhibit/graphql/stationSensors.graphql.dart";
import "package:birdweather_exhibit/graphql/topBirdWeatherSpecies.graphql.dart";
import "package:freezed_annotation/freezed_annotation.dart";

part "top_species_state.freezed.dart";

@freezed
sealed class TopSpeciesState with _$TopSpeciesState {
  const factory TopSpeciesState({
    Query$TopBirdWeatherSpecies? topSpecies,
    DateTime? lastUpdated,
    Query$StationSensors? sensorData,
    @Default(false) isUpdating,
  }) = TopSpeciesLoadedState;

  const TopSpeciesState._();
}
