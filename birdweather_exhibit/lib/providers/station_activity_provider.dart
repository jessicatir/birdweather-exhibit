import "package:birdweather_exhibit/api_providers.dart";
import "package:birdweather_exhibit/graphql/schema.graphql.dart";
import "package:birdweather_exhibit/graphql/topBirdWeatherSpecies.graphql.dart";
import "package:flutter/foundation.dart";
import "package:graphql/client.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";

part "station_activity_provider.g.dart";

/// A non-default station must have at least this many detections in the last
/// 24 hours to be included in the rotation. Below this it is skipped and the
/// display stays on the default station. Tune to taste.
const int minDetectionsForRotation = 50;

/// Total detections for [stationId] over the last 24 hours.
///
/// Used to decide whether a station currently has enough data to be worth
/// showing. This is a lightweight, station-agnostic check that runs outside the
/// per-station display scopes. Returns 0 on any error so a struggling station is
/// treated as "not enough data" rather than breaking the rotation.
@riverpod
Future<int> stationDetectionCount(
    StationDetectionCountRef ref, String stationId) async {
  try {
    final client = ref.read(birdWeatherGraphQLClientProvider);
    final response = await client.query$TopBirdWeatherSpecies(
      Options$Query$TopBirdWeatherSpecies(
        // Always hit the network so re-checks reflect current activity.
        fetchPolicy: FetchPolicy.noCache,
        variables: Variables$Query$TopBirdWeatherSpecies(
          period: Input$InputDuration(count: 24, unit: "hour"),
          limit: 100,
          stationIds: [stationId],
        ),
      ),
    );
    if (response.hasException || response.parsedData == null) return 0;
    final total =
        response.parsedData!.species.fold<int>(0, (sum, s) => sum + s.count);
    debugPrint(
        "Station $stationId activity: $total detections/24h (threshold $minDetectionsForRotation)");
    return total;
  } catch (e) {
    debugPrint("Station $stationId activity check failed: $e");
    return 0;
  }
}
