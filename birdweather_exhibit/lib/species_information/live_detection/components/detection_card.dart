import "package:birdweather_exhibit/species_information/live_detection/components/live_detection_status_indicator.dart";
import "package:birdweather_exhibit/theme/glassmorphism_theme.dart";
import "package:flutter/material.dart";
import "package:flutter_animate/flutter_animate.dart";

class AnimatedDetectionCard extends StatelessWidget {
  final String detectionId;
  final String imageUrl;
  final String commonName;
  final String scientificName;
  final String timestamp;
  final bool isLive;
  final String description;
  final Animation<double>? slideAnimation;
  final Animation<double>? fadeAnimation;

  const AnimatedDetectionCard({
    required this.detectionId,
    required this.imageUrl,
    required this.commonName,
    required this.scientificName,
    required this.timestamp,
    required this.isLive,
    required this.description,
    this.slideAnimation,
    this.fadeAnimation,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Widget card = DetectionCard(
      imageUrl: imageUrl,
      commonName: commonName,
      scientificName: scientificName,
      timestamp: timestamp,
      isLive: isLive,
      description: description,
    );

    // If animations exist, wrap the card with animated builders
    if (slideAnimation != null && fadeAnimation != null) {
      card = AnimatedBuilder(
        animation: slideAnimation!,
        builder: (context, child) {
          return Transform.translate(
            offset: Offset(0, slideAnimation!.value),
            child: FadeTransition(
              opacity: fadeAnimation!,
              child: child,
            ),
          );
        },
        child: card,
      );
    }

    return card;
  }
}

class DetectionCard extends StatelessWidget {
  final String imageUrl;
  final String commonName;
  final String scientificName;
  final String timestamp;
  final bool isLive;
  final String description;

  const DetectionCard({
    required this.imageUrl,
    required this.commonName,
    required this.scientificName,
    required this.timestamp,
    required this.isLive,
    required this.description,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Animate(
      autoPlay: true,
      onPlay: (controller) => controller.repeat(
        period: GlassmorphismTheme.animationDuration,
        reverse: true,
      ),
      effects: [
        CustomEffect(
          builder: (BuildContext context, double value, Widget child) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: GlassmorphismTheme.standardBorderRadius,
                boxShadow:
                    GlassmorphismTheme.getAnimatedBoxShadow(isLive, value),
              ),
              child: child,
            );
          },
        ),
      ],
      child: ClipRRect(
        borderRadius: GlassmorphismTheme.standardBorderRadius,
        child: BackdropFilter(
          filter: GlassmorphismTheme.backdropBlur,
          child: Container(
            width: 480,
            padding: const EdgeInsets.all(16),
            decoration:
                GlassmorphismTheme.getGlassmorphismDecoration(isLive: isLive),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Header with status
                Row(
                  children: [
                    const Expanded(
                      child: Text(
                        "Recent Detection",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    LiveDetectionStatusIndicator(isLive: isLive),
                  ],
                ),
                const SizedBox(height: 8),

                // Bird image and info
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.network(
                        imageUrl,
                        width: 80,
                        height: 80,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            width: 80,
                            height: 80,
                            color: Colors.grey.withValues(alpha: 0.3),
                            child: const Icon(
                              Icons.image_not_supported,
                              color: Colors.white,
                              size: 30,
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            commonName,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 4),
                          Text(
                            scientificName,
                            style: TextStyle(
                              fontSize: 16,
                              fontStyle: FontStyle.italic,
                              color: Colors.white.withValues(alpha: 0.8),
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 4),
                          if (isLive)
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 4,
                              ),
                              decoration: GlassmorphismTheme
                                  .getContentContainerDecoration(
                                isHighlighted: false,
                                customBorderRadius: 8,
                              ),
                              child: const Text(
                                "Currently Calling!",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          else
                            Text(
                              "Last detected at ${_formatTimestamp(timestamp)}",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white.withValues(alpha: 0.8),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ],
                ),

                // Description
                if (description.isNotEmpty) ...[
                  const SizedBox(height: 12),
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration:
                        GlassmorphismTheme.getContentContainerDecoration(),
                    child: Text(
                      description,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white.withValues(alpha: 0.9),
                        height: 1.3,
                      ),
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }

  String _formatTimestamp(String timestamp) {
    final dateTime = DateTime.parse(timestamp);
    final localTime = dateTime.toLocal();
    final hour = localTime.hour;
    final minute = localTime.minute.toString().padLeft(2, "0");
    final period = hour >= 12 ? "PM" : "AM";
    final displayHour = hour == 0 ? 12 : (hour > 12 ? hour - 12 : hour);
    return "$displayHour:$minute $period";
  }
}
