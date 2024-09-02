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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
                flex: 1,
                child: Card(
                  color: Theme.of(context).colorScheme.onPrimary,
                  surfaceTintColor: Colors.transparent,
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: const Center(
                    child: TopSpeciesSection(),
                  ),
                )),
            const SizedBox(
              width: 8,
            ),
            Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Card(
                          color: Theme.of(context).colorScheme.onPrimary,
                          surfaceTintColor: Colors.transparent,
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: const Center(
                            child: LiveDetectionSection(),
                          ),
                        )),
                    const SizedBox(
                      height: 8,
                    ),
                    Expanded(
                        flex: 1,
                        child: Card(
                          color: Theme.of(context).colorScheme.onPrimary,
                          surfaceTintColor: Colors.transparent,
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: const Center(
                            child: LocationDataSection(),
                          ),
                        )),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
