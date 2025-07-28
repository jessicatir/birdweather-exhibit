import "package:riverpod_annotation/riverpod_annotation.dart";

part "station_config.g.dart";

/// Configuration for the BirdWeather station
class StationConfig {
  const StationConfig({
    required this.stationId,
    required this.locationName,
    required this.backgroundImageFilename,
  });

  /// The BirdWeather station ID to fetch data from
  final String stationId;

  /// The human-readable location name to display in the UI
  final String locationName;

  /// The filename of the background image in assets/images/
  final String backgroundImageFilename;

  /// Create a custom configuration
  static StationConfig custom({
    required String stationId,
    required String locationName,
    required String backgroundImageFilename,
  }) {
    return StationConfig(
      stationId: stationId,
      locationName: locationName,
      backgroundImageFilename: backgroundImageFilename,
    );
  }

  @override
  String toString() {
    return "StationConfig(stationId: $stationId, locationName: $locationName, backgroundImageFilename: $backgroundImageFilename)";
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is StationConfig &&
        other.stationId == stationId &&
        other.locationName == locationName &&
        other.backgroundImageFilename == backgroundImageFilename;
  }

  @override
  int get hashCode =>
      Object.hash(stationId, locationName, backgroundImageFilename);
}

/// Provider for the station configuration
///
/// This provider MUST be overridden with a specific station configuration.
/// Override this provider in your main.dart:
/// ```dart
/// ProviderContainer(
///   overrides: [
///     stationConfigProvider.overrideWithValue(
///       StationConfig.custom(
///         stationId: "1234",
///         locationName: "My Custom Location",
///         backgroundImageFilename: "background.jpg",
///       ),
///     ),
///   ],
/// )
/// ```
@Riverpod(keepAlive: true)
StationConfig stationConfig(StationConfigRef ref) {
  throw UnimplementedError(
    "StationConfig must be overridden in main.dart with a specific station configuration. "
    "See the documentation in station_config.dart for examples.",
  );
}
