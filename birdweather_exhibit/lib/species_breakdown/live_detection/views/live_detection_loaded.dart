import "package:birdweather_exhibit/species_breakdown/live_detection/components/animated_detection_card.dart";
import "package:birdweather_exhibit/species_breakdown/live_detection/components/species_details.dart";
import "package:birdweather_exhibit/species_breakdown/live_detection/live_detection_state.dart";
import "package:flutter/material.dart";

class LiveDetectionLoaded extends StatelessWidget {
  const LiveDetectionLoaded({
    required this.state,
    super.key,
  });

  final LiveDetectionState state;

  @override
  Widget build(BuildContext context) {
    final newDetection = state.detection;
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedDetectionCard(
            imageUrl: newDetection!.species.imageUrl!,
            commonName: newDetection.species.commonName,
            scientificName: newDetection.species.scientificName!,
            timestamp: newDetection.timestamp!,
            isLive: state.isLive,
          ),
          const SizedBox(height: 16.0),
          SpeciesDetails(
            wikipediaSummary: newDetection.species.wikipediaSummary!,
          ),
        ],
      ),
    );
  }
}
