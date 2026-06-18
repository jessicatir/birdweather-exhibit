import "package:birdweather_exhibit/species_information/components/exhibit_info_card.dart";
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
          // The detection card in the center column has a fixed width; each
          // side box is centered (horizontally and vertically) within the gap
          // between a screen edge and that column.
          const centerColumnWidth = 500.0;
          final sideRegionWidth =
              (constraints.maxWidth - centerColumnWidth) / 2;

          return Stack(
            children: [
              // Full-screen background image
              const ImmersiveBackground(),

              // Right column: location panel plus a static info card,
              // centered in the gap between the center column and the
              // right edge.
              Positioned(
                top: 0,
                bottom: 0,
                right: 0,
                width: sideRegionWidth,
                child: const Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      LocationData(),
                      SizedBox(height: 16),
                      ExhibitInfoCard(),
                    ],
                  ),
                ),
              ),

              // Left box: centered in the gap between the left edge of
              // the screen and the center column.
              Positioned(
                top: 0,
                bottom: 0,
                left: 0,
                width: sideRegionWidth,
                child: const Align(
                  alignment: Alignment.center,
                  child: CompactTopDetections(),
                ),
              ),

              // Recent detection card (center column)
              const RecentDetections(),
            ],
          );
        },
      ),
    );
  }
}
