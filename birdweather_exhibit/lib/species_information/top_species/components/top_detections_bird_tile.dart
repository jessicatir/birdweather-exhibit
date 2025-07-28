import "package:birdweather_exhibit/theme/glassmorphism_theme.dart";
import "package:flutter/material.dart";

class TopDetectionsBirdTile extends StatelessWidget {
  final int rank;
  final String imageUrl;
  final String commonName;
  final int detectionCount;

  const TopDetectionsBirdTile({
    required this.rank,
    required this.imageUrl,
    required this.commonName,
    required this.detectionCount,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
