import "package:birdweather_exhibit/config/station_config.dart";
import "package:birdweather_exhibit/offline/hive_graphql_cache.dart";
import "package:birdweather_exhibit/species_information/main_species_information_screen.dart";
import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Create a container to initialize services with station configuration
  final container = ProviderContainer(
    overrides: [
      // Configure the BirdWeather station to use
      stationConfigProvider.overrideWithValue(
        StationConfig.custom(
          stationId: "2354", // Replace with your station ID
          locationName:
              "Pullman Neighborhood", // Replace with your location name
          backgroundImageFilename:
              "background.jpg", // Replace with your background image filename
        ),
      ),
    ],
  );

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
      home: const MainSpeciesInformationScreen(),
    );
  }
}
