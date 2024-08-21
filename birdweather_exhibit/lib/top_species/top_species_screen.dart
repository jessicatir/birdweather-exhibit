import 'dart:convert';

import 'package:birdweather_exhibit/services/bird_weather_service.dart';
import 'package:birdweather_exhibit/top_species/pages/top_species_loaded_page.dart';
import 'package:birdweather_exhibit/top_species/top_species_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

class TopSpeciesScreen extends ConsumerStatefulWidget {
  const TopSpeciesScreen({super.key, required this.title});

  final String title;

  @override
  ConsumerState<TopSpeciesScreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends ConsumerState<TopSpeciesScreen> {
  var data = "";

  @override
  Widget build(BuildContext context) {
    final topSpeciesState = ref.watch(topSpeciesNotifierProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: topSpeciesState.map(
          data: (data) {
            final state = data.value;
            final topSpecies = state.topSpecies!;
            final String prettyString = const JsonEncoder.withIndent('  ')
                .convert(topSpecies!.toJson());
            return Center(
              child: TopSpeciesLoadedPage(
                topSpecies: topSpecies,
              ),
            );
          },
          error: (error) {
            return const Center(child: Text("error occured"));
          },
          loading: (loading) =>
              const Center(child: CircularProgressIndicator())),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.invalidate(topSpeciesNotifierProvider);
        },
        tooltip: 'Refresh',
        child: const Icon(Icons.add),
      ),
    );
  }
}
