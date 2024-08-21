import 'package:birdweather_exhibit/top_species/top_species_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(
    child: ExhibitApp(),
  ));
}

class ExhibitApp extends StatelessWidget {
  const ExhibitApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const TopSpeciesScreen(title: 'Home Page'),
    );
  }
}
