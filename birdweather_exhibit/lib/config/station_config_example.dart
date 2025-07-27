import "package:birdweather_exhibit/config/station_config.dart";
import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

/// Example showing how to configure the station for different locations
///
/// This file demonstrates how to configure the station for different
/// BirdWeather stations and location names.

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Example 1: Using a custom station configuration
  final container = ProviderContainer(
    overrides: [
      // Configure the station with your specific values
      stationConfigProvider.overrideWithValue(
        StationConfig.custom(
          stationId: "1234", // Replace with your station ID
          locationName: "My Custom Location", // Replace with your location name
        ),
      ),
    ],
  );

  runApp(UncontrolledProviderScope(
    container: container,
    child: const MyApp(),
  ));
}

/// Alternative example for different stations:
void runWithSeattleStation() {
  runApp(
    ProviderScope(
      overrides: [
        stationConfigProvider.overrideWithValue(
          StationConfig.custom(
            stationId: "5678",
            locationName: "Seattle Waterfront",
          ),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

/// Alternative example for different stations:
void runWithPortlandStation() {
  runApp(
    ProviderScope(
      overrides: [
        stationConfigProvider.overrideWithValue(
          StationConfig.custom(
            stationId: "9012",
            locationName: "Portland Downtown",
          ),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

/// Example of using the Pullman, WA station (Station 2354)
void runWithPullmanStation() async {
  WidgetsFlutterBinding.ensureInitialized();
  final container = ProviderContainer(
    overrides: [
      stationConfigProvider.overrideWithValue(
        StationConfig.custom(
          stationId: "2354",
          locationName: "Pullman Neighborhood",
        ),
      ),
    ],
  );
  runApp(UncontrolledProviderScope(container: container, child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "BirdWeather Exhibit",
      home: Scaffold(
        appBar: AppBar(title: const Text("BirdWeather Exhibit")),
        body: const Center(
          child: Text("Your app content here"),
        ),
      ),
    );
  }
}

/// Widget that displays the current station configuration
class StationConfigDisplay extends ConsumerWidget {
  const StationConfigDisplay({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final config = ref.read(stationConfigProvider);

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Current Station Configuration",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 8),
            Text("Station ID: ${config.stationId}"),
            Text("Location Name: ${config.locationName}"),
          ],
        ),
      ),
    );
  }
}
