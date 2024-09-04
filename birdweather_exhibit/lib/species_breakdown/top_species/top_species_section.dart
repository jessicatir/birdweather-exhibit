import "package:birdweather_exhibit/species_breakdown/top_species/views/top_species_loaded.dart";
import "package:birdweather_exhibit/species_breakdown/top_species/top_species_notifier.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:flutter/material.dart";

class TopSpeciesSection extends ConsumerStatefulWidget {
  const TopSpeciesSection({
    super.key,
  });

  @override
  ConsumerState<TopSpeciesSection> createState() => _MyHomePageState();
}

class _MyHomePageState extends ConsumerState<TopSpeciesSection> {
  @override
  Widget build(BuildContext context) {
    final topSpeciesState = ref.watch(topSpeciesNotifierProvider);
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 32,
        horizontal: 8,
      ),
      child: Column(
        children: [
          // Image.asset(
          //   "assets/images/pullman-neighborhood.jpg",
          //   fit: BoxFit.fill,
          //   height: 250,
          // ),
          const Text(
            "Top Detections",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24.0,
            ),
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            "Past 24 Hours",
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 18.0,
              color: Theme.of(context).colorScheme.outline,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          topSpeciesState.map(
            data: (data) {
              final state = data.value;
              final topSpecies = state.topSpecies!;
              final lastUpdated = state.lastUpdated;
              return TopSpeciesLoaded(
                topSpecies: topSpecies,
                lastUpdated: lastUpdated,
              );
            },
            error: (error) {
              return const Center(
                child: Text("error occured"),
              );
            },
            loading: (loading) => const Center(
              child: CircularProgressIndicator(),
            ),
          ),
        ],
      ),
    );
  }
}
