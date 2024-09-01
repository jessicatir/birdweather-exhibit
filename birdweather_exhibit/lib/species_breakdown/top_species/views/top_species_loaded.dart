import "package:birdweather_exhibit/graphql/topBirdWeatherSpecies.graphql.dart";
import "package:birdweather_exhibit/species_breakdown/top_species/components/bird_tile.dart";
import "package:flutter/material.dart";

class TopSpeciesLoaded extends StatelessWidget {
  const TopSpeciesLoaded({
    super.key,
    required this.topSpecies,
  });

  final Query$TopBirdWeatherSpecies topSpecies;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: topSpecies.species.length,
        itemBuilder: (BuildContext context, int index) {
          final imageUrl = topSpecies.species[index].species!.thumbnailUrl!;
          final commonName = topSpecies.species[index].species!.commonName;
          final scientificName =
              topSpecies.species[index].species!.scientificName!;
          final detectionCount = topSpecies.species[index].count;
          final borderColor = topSpecies.species[index].species!.color;

          return BirdTile(
            imageUrl: imageUrl,
            commonName: commonName,
            scientificName: scientificName,
            detectionCount: detectionCount,
            borderColor: borderColor,
          );
        });
  }
}
