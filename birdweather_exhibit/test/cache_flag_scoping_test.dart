import "package:birdweather_exhibit/config/station_config.dart";
import "package:birdweather_exhibit/services/bird_weather_service.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:flutter_test/flutter_test.dart";

/// Mirrors how `StationRotator` mounts each station: a child container whose
/// only override is that station's config.
ProviderContainer stationScope(ProviderContainer root, String stationId) {
  return ProviderContainer(
    parent: root,
    overrides: [
      stationConfigProvider.overrideWithValue(
        StationConfig.custom(
          stationId: stationId,
          locationName: "Station $stationId",
          backgroundImageFilename: "$stationId/background.jpg",
          aboutLocationPhrase: "at station $stationId",
        ),
      ),
    ],
  );
}

void main() {
  group("lastDataFromCacheProvider", () {
    test("each station scope gets its own flag", () {
      final root = ProviderContainer();
      final stationA = stationScope(root, "2354");
      final stationB = stationScope(root, "7837");
      addTearDown(() {
        stationA.dispose();
        stationB.dispose();
        root.dispose();
      });

      // The failure Allie described: station A falls back to cache while
      // station B's near-simultaneous fetch succeeds.
      stationA.read(lastDataFromCacheProvider.notifier).state = true;
      stationB.read(lastDataFromCacheProvider.notifier).state = false;

      // Before scoping, B's write landed on the same root-mounted flag and
      // cleared A's, so A showed "Live" over stale cached data.
      expect(stationA.read(lastDataFromCacheProvider), isTrue,
          reason: "station A must keep its offline flag when B succeeds");
      expect(stationB.read(lastDataFromCacheProvider), isFalse);
    });

    test("the flag is mounted per scope, not shared with the root", () {
      final root = ProviderContainer();
      final station = stationScope(root, "2354");
      addTearDown(() {
        station.dispose();
        root.dispose();
      });

      station.read(lastDataFromCacheProvider.notifier).state = true;

      expect(root.read(lastDataFromCacheProvider), isFalse,
          reason: "a scoped write must not leak to the root container");
    });
  });
}
