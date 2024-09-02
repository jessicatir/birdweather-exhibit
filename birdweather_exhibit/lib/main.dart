import "package:birdweather_exhibit/species_breakdown/species_breakdown_screen.dart";
import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

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
      title: "CRCM Exhibit",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //primaryColor: const Color(0xFFA60F2D),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFA60F2D),
        ),
        useMaterial3: true,
      ),
      home: const SpeciesBreakdownScreen(),
    );
  }
}
