import "package:birdweather_exhibit/species_breakdown/components/species_breakdown_panel.dart";
import "package:birdweather_exhibit/species_breakdown/live_detection/live_detection_section.dart";
import "package:birdweather_exhibit/species_breakdown/location_data/location_data_section.dart";
import "package:birdweather_exhibit/species_breakdown/top_species/top_species_section.dart";
import "package:flutter/material.dart";

class SpeciesBreakdownScreen extends StatelessWidget {
  const SpeciesBreakdownScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(
          "Live Demo",
          style: TextStyle(
            color: Theme.of(context).colorScheme.onPrimary,
          ),
        ),
      ),
      backgroundColor: Colors.grey[400],
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 800 || constraints.maxHeight < 600) {
            return const Padding(
              padding: EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SpeciesBreakdownPanel(
                      child: SizedBox(
                        height: 800,
                        child: TopSpeciesSection(),
                      ),
                    ),
                    SizedBox(height: 8),
                    SpeciesBreakdownPanel(
                      child: LiveDetectionSection(),
                    ),
                    SizedBox(height: 8),
                    SpeciesBreakdownPanel(
                      child: LocationDataSection(),
                    ),
                  ],
                ),
              ),
            );
          } else {
            return const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: SpeciesBreakdownPanel(
                      child: TopSpeciesSection(),
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 1,
                          child: SpeciesBreakdownPanel(
                            child: LiveDetectionSection(),
                          ),
                        ),
                        SizedBox(height: 8),
                        Expanded(
                          flex: 1,
                          child: SpeciesBreakdownPanel(
                            child: LocationDataSection(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
