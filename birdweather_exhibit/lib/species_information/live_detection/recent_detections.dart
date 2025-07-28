import "package:birdweather_exhibit/species_information/live_detection/components/detection_card.dart";
import "package:birdweather_exhibit/species_information/live_detection/live_detection_notifier.dart";
import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

class RecentDetections extends ConsumerStatefulWidget {
  const RecentDetections({super.key});

  @override
  ConsumerState<RecentDetections> createState() =>
      _FloatingRecentDetectionState();
}

class _FloatingRecentDetectionState extends ConsumerState<RecentDetections>
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
                    AnimatedDetectionCard(
                      detectionId: detectionId,
                      imageUrl: detection.species.imageUrl!,
                      commonName: detection.species.commonName,
                      scientificName: detection.species.scientificName!,
                      timestamp: detection.timestamp!,
                      isLive: detectionWithStatus.isLive,
                      description: detectionWithStatus.resolvedDescription,
                      slideAnimation: _slideAnimations[detectionId],
                      fadeAnimation: _fadeAnimations[detectionId],
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
}
