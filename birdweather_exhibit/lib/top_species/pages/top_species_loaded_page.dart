import 'package:birdweather_exhibit/graphql/topBirdWeatherSpecies.graphql.dart';
import 'package:birdweather_exhibit/top_species/components/bird_tile.dart';
import 'package:flutter/material.dart';

class TopSpeciesLoadedPage extends StatelessWidget {
  const TopSpeciesLoadedPage({
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
    // return BirdTile(
    //   imageUrl:
    //       "https://media.birdweather.com/species/167/Red-breastedNuthatch-thumbnail-8fd06f8a985b64676909612a9b548479.jpg",
    //   commonName: "Red-breasted Nuthatch",
    //   scientificName: "Sitta canadensis",
    //   detectionCount: 1335,
    //   borderColor: Color(0xFFA0B1FF), // Example color
    // );
  }
}
