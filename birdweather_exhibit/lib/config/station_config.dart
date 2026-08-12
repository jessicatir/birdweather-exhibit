import "package:riverpod_annotation/riverpod_annotation.dart";

part "station_config.g.dart";

/// Configuration for the BirdWeather station
class StationConfig {
  const StationConfig({
    required this.stationId,
    required this.locationName,
    required this.backgroundImageFilename,
    required this.aboutLocationPhrase,
  });

  /// The BirdWeather station ID to fetch data from
  final String stationId;

  /// The human-readable location name to display in the UI
  final String locationName;

  /// The background image path relative to assets/images/ — e.g.
  /// "pullman/background.jpg" or "wsu/background.jpg".
  final String backgroundImageFilename;

  /// Phrase describing where this station is, inserted after "detected " in the
  /// About card — e.g. "in a neighborhood in Pullman, WA" or "on the WSU campus
  /// in Pullman, WA". Include the leading preposition so it reads naturally.
  final String aboutLocationPhrase;

  /// Create a custom configuration
  static StationConfig custom({
    required String stationId,
    required String locationName,
    required String backgroundImageFilename,
    required String aboutLocationPhrase,
  }) {
    return StationConfig(
      stationId: stationId,
      locationName: locationName,
      backgroundImageFilename: backgroundImageFilename,
      aboutLocationPhrase: aboutLocationPhrase,
    );
  }

  @override
  String toString() {
    return "StationConfig(stationId: $stationId, locationName: $locationName, backgroundImageFilename: $backgroundImageFilename, aboutLocationPhrase: $aboutLocationPhrase)";
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is StationConfig &&
        other.stationId == stationId &&
        other.locationName == locationName &&
        other.backgroundImageFilename == backgroundImageFilename &&
        other.aboutLocationPhrase == aboutLocationPhrase;
  }

  @override
  int get hashCode => Object.hash(
      stationId, locationName, backgroundImageFilename, aboutLocationPhrase);
}

/// Provider for the station configuration.
///
/// This provider MUST be overridden with a specific station configuration; it
/// has no default. `StationRotator` does the overriding, mounting each station
/// in its own `ProviderScope` so the per-station providers that depend on this
/// one (`birdWeatherService` and everything chaining off it) get their own
/// instance per station:
/// ```dart
/// ProviderScope(
///   overrides: [
///     stationConfigProvider.overrideWithValue(
///       StationConfig.custom(
///         stationId: "1234",
///         locationName: "My Custom Location",
///         backgroundImageFilename: "my_location/background.jpg",
///         aboutLocationPhrase: "in My Custom Location",
///       ),
///     ),
///   ],
///   child: const MainSpeciesInformationScreen(),
/// )
/// ```
///
/// To change which stations the exhibit shows, edit the list in `main.dart`
/// rather than overriding this directly.
@Riverpod(keepAlive: true)
StationConfig stationConfig(StationConfigRef ref) {
  throw UnimplementedError(
    "StationConfig must be overridden in main.dart with a specific station configuration. "
    "See the documentation in station_config.dart for examples.",
  );
}
