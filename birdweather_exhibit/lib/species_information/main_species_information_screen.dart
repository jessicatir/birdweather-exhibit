import "package:birdweather_exhibit/species_information/components/immersive_background.dart";
import "package:birdweather_exhibit/species_information/location_data/location_data.dart";
import "package:birdweather_exhibit/species_information/live_detection/recent_detections.dart";
import "package:birdweather_exhibit/species_information/top_species/components/compact_top_detections.dart";
import "package:flutter/material.dart";

class MainSpeciesInformationScreen extends StatelessWidget {
  const MainSpeciesInformationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          // Margin scales with screen size so the exhibit has breathing room
          // around the edges on large displays, with sensible min/max bounds.
          final spacing = (constraints.maxWidth * 0.03).clamp(16.0, 64.0);

          return Stack(
            children: [
              // Full-screen background image
              const ImmersiveBackground(),

              // Floating UI elements positioned responsively
              Positioned(
                top: spacing,
                right: spacing,
                child: const LocationData(),
              ),

              Positioned(
                top: spacing,
                left: spacing,
                child: const CompactTopDetections(),
              ),

              // Recent detection card will be positioned randomly
              const RecentDetections(),
            ],
          );
        },
      ),
    );
  }
}
