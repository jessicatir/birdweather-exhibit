import "package:birdweather_exhibit/species_breakdown/live_detection/components/live_detection_status_indicator.dart";
import "package:birdweather_exhibit/species_breakdown/live_detection/live_detection_notifier.dart";
import "package:birdweather_exhibit/theme/glassmorphism_theme.dart";
import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:flutter_animate/flutter_animate.dart";

class FloatingRecentDetection extends ConsumerStatefulWidget {
  const FloatingRecentDetection({super.key});

  @override
  ConsumerState<FloatingRecentDetection> createState() =>
      _FloatingRecentDetectionState();
}

class _FloatingRecentDetectionState
    extends ConsumerState<FloatingRecentDetection>
    with TickerProviderStateMixin {
  Set<String> _currentlyVisibleIds =
      {}; // Track which detection IDs are currently visible in the list
  final Map<String, AnimationController> _animationControllers = {};
  final Map<String, Animation<double>> _slideAnimations = {};
  final Map<String, Animation<double>> _fadeAnimations = {};

  @override
  void dispose() {
    // Clean up animation controllers
    for (final controller in _animationControllers.values) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final liveDetectionState = ref.watch(liveDetectionNotifierProvider);

    return liveDetectionState.map(
      data: (data) {
        final state = data.value;
        final recentDetections = state.recentDetections;

        if (recentDetections.isEmpty) {
          return const SizedBox.shrink();
        }

        // Check for changes and setup animations
        _setupAnimations(recentDetections);

        // Use Center widget to automatically center the content
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Display up to 3 recent detections with animations
              ...recentDetections.asMap().entries.map((entry) {
                final index = entry.key;
                final detectionWithStatus = entry.value;
                final detection = detectionWithStatus.detection;
                final detectionId = detection.id;

                return Column(
                  children: [
                    if (index > 0)
                      const SizedBox(height: 16), // Spacing between cards
                    _buildAnimatedDetectionCard(
                      context,
                      detectionId,
                      detection.species.imageUrl!,
                      detection.species.commonName,
                      detection.species.scientificName!,
                      detection.timestamp!,
                      detectionWithStatus.isLive,
                      detection.species.wikipediaSummary!,
                    ),
                  ],
                );
              }),
            ],
          ),
        );
      },
      error: (error) => const SizedBox.shrink(),
      loading: (loading) => const SizedBox.shrink(),
    );
  }

  void _setupAnimations(List<dynamic> recentDetections) {
    final currentDetectionIds =
        recentDetections.map((d) => d.detection.id as String).toList();

    // Find detections that are newly added to the visible list
    final newlyVisibleDetections = currentDetectionIds
        .where((id) => !_currentlyVisibleIds.contains(id))
        .toList();

    // Create animation controllers for newly visible detections
    for (final detectionId in newlyVisibleDetections) {
      if (!_animationControllers.containsKey(detectionId)) {
        final controller = AnimationController(
          duration: const Duration(milliseconds: 600),
          vsync: this,
        );

        _animationControllers[detectionId] = controller;

        // Slide animation (from top)
        _slideAnimations[detectionId] = Tween<double>(
          begin: -100.0,
          end: 0.0,
        ).animate(CurvedAnimation(
          parent: controller,
          curve: Curves.easeOutBack,
        ));

        // Fade animation
        _fadeAnimations[detectionId] = Tween<double>(
          begin: 0.0,
          end: 1.0,
        ).animate(CurvedAnimation(
          parent: controller,
          curve: Curves.easeOut,
        ));

        // Start the animation
        controller.forward();
      }
    }

    // Clean up controllers for detections that are no longer visible
    final detectionsToRemove = _animationControllers.keys
        .where((id) => !currentDetectionIds.contains(id))
        .toList();
    for (final detectionId in detectionsToRemove) {
      _animationControllers[detectionId]?.dispose();
      _animationControllers.remove(detectionId);
      _slideAnimations.remove(detectionId);
      _fadeAnimations.remove(detectionId);
    }

    // Update the currently visible IDs
    _currentlyVisibleIds = currentDetectionIds.toSet();
  }

  Widget _buildAnimatedDetectionCard(
    BuildContext context,
    String detectionId,
    String imageUrl,
    String commonName,
    String scientificName,
    String timestamp,
    bool isLive,
    String description,
  ) {
    return AnimatedDetectionCard(
      detectionId: detectionId,
      imageUrl: imageUrl,
      commonName: commonName,
      scientificName: scientificName,
      timestamp: timestamp,
      isLive: isLive,
      description: description,
      slideAnimation: _slideAnimations[detectionId],
      fadeAnimation: _fadeAnimations[detectionId],
    );
  }
}

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
