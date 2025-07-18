import "package:birdweather_exhibit/species_information/top_species/components/top_detections_bird_tile.dart";
import "package:birdweather_exhibit/species_information/top_species/top_species_notifier.dart";
import "package:birdweather_exhibit/species_information/top_species/top_species_state.dart";
import "package:birdweather_exhibit/theme/glassmorphism_theme.dart";
import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:intl/intl.dart";

class CompactTopDetections extends ConsumerWidget {
  const CompactTopDetections({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final topSpeciesState = ref.watch(topSpeciesNotifierProvider);

    return topSpeciesState.map(
      data: (data) => _TopDetectionsLoadedWidget(data: data),
      error: (error) => const _TopDetectionsErrorWidget(),
      loading: (loading) => const _TopDetectionsLoadingWidget(),
    );
  }
}

class _TopDetectionsLoadedWidget extends StatelessWidget {
  final AsyncData<TopSpeciesState> data;

  const _TopDetectionsLoadedWidget({required this.data});

  @override
  Widget build(BuildContext context) {
    final state = data.value;
    final topSpecies = state.topSpecies!;
    final lastUpdated = state.lastUpdated;

    // Take only the top 10 species
    final topTenSpecies = topSpecies.species.take(10).toList();

    return ClipRRect(
      borderRadius: GlassmorphismTheme.standardBorderRadius,
      child: BackdropFilter(
        filter: GlassmorphismTheme.backdropBlur,
        child: Container(
          width: 420,
          padding: const EdgeInsets.all(20),
          decoration:
              GlassmorphismTheme.getGlassmorphismDecoration(isLive: false),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  Icon(
                    Icons.trending_up,
                    color: Colors.white,
                    size: 24,
                  ),
                  SizedBox(width: 12),
                  Text(
                    "Top Detections",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                "Past 24 Hours • Ranked by Detection Count",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white.withValues(alpha: 0.8),
                  fontStyle: FontStyle.italic,
                ),
              ),
              if (lastUpdated != null) ...[
                const SizedBox(height: 4),
                Text(
                  "Last updated at ${DateFormat.jm().format(lastUpdated)}",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white.withValues(alpha: 0.7),
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
              const SizedBox(height: 16),

              // Compact list of species
              ...topTenSpecies.asMap().entries.map((entry) {
                final index = entry.key;
                final species = entry.value;
                final imageUrl = species.species!.thumbnailUrl!;
                final commonName = species.species!.commonName;
                final detectionCount = species.count;

                return Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: TopDetectionsBirdTile(
                    rank: index + 1,
                    imageUrl: imageUrl,
                    commonName: commonName,
                    detectionCount: detectionCount,
                  ),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}

class _TopDetectionsErrorWidget extends StatelessWidget {
  const _TopDetectionsErrorWidget();

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: GlassmorphismTheme.standardBorderRadius,
      child: BackdropFilter(
        filter: GlassmorphismTheme.backdropBlur,
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.red.withValues(alpha: 0.1),
            borderRadius: GlassmorphismTheme.standardBorderRadius,
            border: Border.all(color: Colors.red.withValues(alpha: 0.3)),
          ),
          child: const Text(
            "Error loading top detections",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class _TopDetectionsLoadingWidget extends StatelessWidget {
  const _TopDetectionsLoadingWidget();

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: GlassmorphismTheme.standardBorderRadius,
      child: BackdropFilter(
        filter: GlassmorphismTheme.backdropBlur,
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration:
              GlassmorphismTheme.getGlassmorphismDecoration(isLive: false),
          child: const CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
          ),
        ),
      ),
    );
  }
}
