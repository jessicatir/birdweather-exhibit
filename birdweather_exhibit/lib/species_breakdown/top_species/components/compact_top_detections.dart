import "package:birdweather_exhibit/species_breakdown/top_species/top_species_notifier.dart";
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
      data: (data) {
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
                      child: _buildCompactBirdItem(
                        context,
                        index + 1,
                        imageUrl,
                        commonName,
                        detectionCount,
                      ),
                    );
                  }),
                ],
              ),
            ),
          ),
        );
      },
      error: (error) => ClipRRect(
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
      ),
      loading: (loading) => ClipRRect(
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
      ),
    );
  }

  Widget _buildCompactBirdItem(
    BuildContext context,
    int rank,
    String imageUrl,
    String commonName,
    int detectionCount,
  ) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: GlassmorphismTheme.getContentContainerDecoration(
        customBorderRadius: 12,
      ),
      child: Row(
        children: [
          // Rank number
          SizedBox(
            width: 24,
            child: Center(
              child: Text(
                rank.toString(),
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(width: 12),

          // Bird image
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              imageUrl,
              width: 50,
              height: 50,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  width: 50,
                  height: 50,
                  color: Colors.grey.withValues(alpha: 0.3),
                  child: const Icon(
                    Icons.image_not_supported,
                    color: Colors.white,
                    size: 20,
                  ),
                );
              },
            ),
          ),
          const SizedBox(width: 12),

          // Bird name
          Expanded(
            child: Text(
              commonName,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),

          // Detection count
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: Colors.green.withValues(alpha: 0.2),
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: Colors.green.withValues(alpha: 0.3),
                width: 1,
              ),
            ),
            child: Text(
              detectionCount.toString(),
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
