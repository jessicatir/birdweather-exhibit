import "package:birdweather_exhibit/graphql/topBirdWeatherSpecies.graphql.dart";
import "package:birdweather_exhibit/species_breakdown/top_species/components/auto_scrolling_detection_list.dart";
import "package:birdweather_exhibit/widgets/auto_scrolling_page.dart";
import "package:flutter/material.dart";
import "package:intl/intl.dart";

class TopSpeciesLoaded extends StatelessWidget {
  const TopSpeciesLoaded({
    required this.topSpecies,
    required this.lastUpdated,
    super.key,
  });

  final Query$TopBirdWeatherSpecies topSpecies;
  final DateTime? lastUpdated;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          if (lastUpdated != null)
            Text(
              "Last updated at ${DateFormat.jm().format(lastUpdated!).toString()}",
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 18.0,
                color: Theme.of(context).colorScheme.outline,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          Expanded(
            child: AutoScrollingPage(
              child: TopSpeciesDetectionList(
                topSpecies: topSpecies,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
