import "package:birdweather_exhibit/api_providers.dart";
import "package:birdweather_exhibit/graphql/schema.graphql.dart";
import "package:birdweather_exhibit/graphql/stationDetectionCount.graphql.dart";
import "package:flutter/foundation.dart";
import "package:graphql/client.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";

part "station_activity_provider.g.dart";

/// A non-default station must have at least this many detections in the last
/// 24 hours to be included in the rotation. Below this it is skipped and the
/// display stays on the default station. Tune to taste.
const int minDetectionsForRotation = 50;

/// If the **default** station reports this many detections or fewer over the
/// last 24 hours, the exhibit hides the live view entirely and shows a static
/// placeholder image instead (see `NoDetectionsPlaceholder`). At zero there is
/// nothing to put in the detection card or the top-species list, so the live
/// view just looks broken.
const int maxDetectionsForPlaceholder = 0;

/// Total detections for [stationId] over the last 24 hours.
///
/// Used to decide whether a station currently has enough data to be worth
/// showing. This is a station-agnostic check that runs outside the per-station
/// display scopes, so it can gate the scoped providers.
///
/// It asks the API for the count itself (`Station.counts`) rather than summing a
/// `topSpecies` list: the exhibit runs 24/7 on a Fire Stick, and this runs per
/// station every 10 minutes, so pulling full species records — image URLs,
/// Wikipedia summaries and all — to derive one integer is bandwidth the display
/// can't spare.
///
/// Unlike every other network call in this app it deliberately skips
/// [BirdWeatherService]'s retry-and-cache-fallback path. Retrying is that
/// helper's job for data the exhibit *displays*; this is a cheap, purely
/// advisory poll that already repeats on a 10-minute timer, and a cached answer
/// would be worse than none — the whole point is to know what a station is doing
/// *now*. A failed check just leaves the rotation as it is until the next tick.
///
/// Failures propagate as an error rather than being reported as a count of 0:
/// callers must be able to tell "the station really heard nothing" from "we
/// couldn't ask". Both leave a station out of the rotation (an errored
/// `AsyncValue` has no fresh value to compare against the threshold), but only a
/// genuine zero at the default station swaps the exhibit for the placeholder.
@riverpod
Future<int> stationDetectionCount(
    StationDetectionCountRef ref, String stationId) async {
  final client = ref.read(birdWeatherGraphQLClientProvider);
  final response = await client.query$StationDetectionCount(
    Options$Query$StationDetectionCount(
      // Always hit the network so re-checks reflect current activity.
      fetchPolicy: FetchPolicy.noCache,
      variables: Variables$Query$StationDetectionCount(
        stationId: stationId,
        period: Input$InputDuration(count: 24, unit: "hour"),
      ),
    ),
  );
  if (response.hasException) {
    debugPrint(
        "Station $stationId activity check failed: ${response.exception}");
    throw response.exception!;
  }
  if (response.parsedData == null) {
    debugPrint("Station $stationId activity check returned no data");
    throw Exception("No activity data returned for station $stationId");
  }
  final total = response.parsedData!.station.counts.detections;
  debugPrint(
      "Station $stationId activity: $total detections/24h (rotation threshold $minDetectionsForRotation)");
  return total;
}
