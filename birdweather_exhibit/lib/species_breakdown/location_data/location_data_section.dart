import "package:birdweather_exhibit/species_breakdown/location_data/views/location_data_loaded.dart";
import "package:birdweather_exhibit/species_breakdown/top_species/top_species_notifier.dart";
import "package:birdweather_exhibit/widgets/auto_scrolling_page.dart";
import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

class LocationDataSection extends ConsumerWidget {
  const LocationDataSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final topSpeciesState = ref.watch(topSpeciesNotifierProvider);
    return Padding(
      padding: const EdgeInsets.all(0),
      child: AutoScrollingPage(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              topSpeciesState.map(
                data: (data) {
                  final state = data.value;
                  return LocationDataLoaded(
                    state: state,
                  );
                },
                error: (error) {
                  return const Center(child: Text("error occured"));
                },
                loading: (loading) =>
                    const Center(child: CircularProgressIndicator()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
