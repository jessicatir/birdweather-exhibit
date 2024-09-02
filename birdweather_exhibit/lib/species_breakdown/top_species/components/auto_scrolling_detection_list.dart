import "package:birdweather_exhibit/graphql/topBirdWeatherSpecies.graphql.dart";
import "package:birdweather_exhibit/species_breakdown/top_species/components/bird_tile.dart";
import "package:flutter/material.dart";

class AutoScrollingSpeciesDetectionList extends StatefulWidget {
  const AutoScrollingSpeciesDetectionList({
    required this.topSpecies,
    super.key,
  });

  final Query$TopBirdWeatherSpecies topSpecies;

  @override
  State<AutoScrollingSpeciesDetectionList> createState() =>
      _AutoScrollingSpeciesDetectionListState();
}

class _AutoScrollingSpeciesDetectionListState
    extends State<AutoScrollingSpeciesDetectionList>
    with SingleTickerProviderStateMixin {
  late ScrollController _scrollController;
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _scrollController = ScrollController();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
    );

    _animation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    )..addListener(() {
        _scrollController.jumpTo(
          _animation.value * _scrollController.position.maxScrollExtent,
        );
      });

    _startScrolling();
  }

  void _startScrolling() {
    _animationController.forward().then((_) {
      _reverseScrolling();
    });
  }

  void _reverseScrolling() {
    _animationController.reverse().then((_) {
      _startScrolling();
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: ListView.builder(
        controller: _scrollController,
        itemCount: widget.topSpecies.species.length,
        itemBuilder: (BuildContext context, int index) {
          final imageUrl =
              widget.topSpecies.species[index].species!.thumbnailUrl!;
          final commonName =
              widget.topSpecies.species[index].species!.commonName;
          final scientificName =
              widget.topSpecies.species[index].species!.scientificName!;
          final detectionCount = widget.topSpecies.species[index].count;
          final borderColor = widget.topSpecies.species[index].species!.color;
          return BirdTile(
            imageUrl: imageUrl,
            commonName: commonName,
            scientificName: scientificName,
            detectionCount: detectionCount,
            borderColor: borderColor,
          );
        },
      ),
    );
  }
}
