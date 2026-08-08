import "package:birdweather_exhibit/config/station_config.dart";
import "package:birdweather_exhibit/offline/hive_graphql_cache.dart";
import "package:birdweather_exhibit/widgets/station_rotator.dart";
import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

/// The BirdWeather stations the exhibit rotates through, in order. Add or remove
/// entries here to change which stations are shown. Each is displayed inside its
/// own scope so they all load independently and stay populated.
///
/// When adding a station, also add its image folder to the `assets:` list in
/// `pubspec.yaml`. Flutter's asset directory declarations are not recursive, so
/// a new `assets/images/<name>/` folder that isn't listed there won't be bundled
/// and its background will silently fail to load at runtime.
final exhibitStations = <StationConfig>[
  StationConfig.custom(
    stationId: "2354",
    locationName: "Pullman Neighborhood",
    backgroundImageFilename: "pullman/background.jpg",
    aboutLocationPhrase: "in a neighborhood in Pullman, WA",
  ),
  StationConfig.custom(
    stationId: "7837",
    locationName: "WSU Campus",
    backgroundImageFilename: "wsu/background.jpg",
    aboutLocationPhrase: "on the WSU campus in Pullman, WA",
  ),
];

/// How long each station is shown before the display cuts to the next one.
const stationRotationInterval = Duration(minutes: 7);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Root container holds the station-independent, shared services (Hive cache,
  // GraphQL client, local species data). Per-station providers are scoped inside
  // each station's ProviderScope (see StationRotator).
  final container = ProviderContainer();

  try {
    // Initialize Hive cache
    await container.read(hiveGraphQLCacheProvider).initialize();
    debugPrint("Cache initialized successfully");
  } catch (e) {
    debugPrint("Cache initialization error: $e");
    // Continue anyway - app should work without cache
  }

  runApp(UncontrolledProviderScope(
    container: container,
    child: const ExhibitApp(),
  ));
}

class ExhibitApp extends StatelessWidget {
  const ExhibitApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "CRCM Exhibit",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: StationRotator(
        stations: exhibitStations,
        interval: stationRotationInterval,
      ),
    );
  }
}
