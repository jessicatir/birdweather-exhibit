import "dart:convert";

import "package:birdweather_exhibit/services/bird_weather_service.dart";
import "package:birdweather_exhibit/species_breakdown/top_species/views/top_species_loaded.dart";
import "package:birdweather_exhibit/species_breakdown/top_species/top_species_notifier.dart";
import "package:carousel_slider/carousel_slider.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:flutter/material.dart";

class TopSpeciesSection extends ConsumerStatefulWidget {
  const TopSpeciesSection({super.key, required this.title});

  final String title;

  @override
  ConsumerState<TopSpeciesSection> createState() => _MyHomePageState();
}

class _MyHomePageState extends ConsumerState<TopSpeciesSection> {
  var data = "";

  @override
  Widget build(BuildContext context) {
    final topSpeciesState = ref.watch(topSpeciesNotifierProvider);
    return topSpeciesState.map(
        data: (data) {
          final state = data.value;
          final topSpecies = state.topSpecies!;
          final String prettyString =
              const JsonEncoder.withIndent("  ").convert(topSpecies.toJson());
          final double height = MediaQuery.of(context).size.height;
          return TopSpeciesLoaded(
            topSpecies: topSpecies,
          );
        },
        error: (error) {
          return const Center(child: Text("error occured"));
        },
        loading: (loading) => const Center(child: CircularProgressIndicator()));
    // floatingActionButton: FloatingActionButton(
    //   onPressed: () {
    //     ref.invalidate(topSpeciesNotifierProvider);
    //   },
    //   tooltip: "Refresh",
    //   child: const Icon(Icons.add),
    // ),
  }
}
