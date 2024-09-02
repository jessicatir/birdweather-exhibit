import "package:birdweather_exhibit/species_breakdown/live_detection/live_detection_notifier.dart";
import "package:flutter/material.dart";
import "package:flutter_animate/flutter_animate.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

class LiveDetectionStatusIndicator extends ConsumerWidget {
  const LiveDetectionStatusIndicator({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final liveDetectionState = ref.watch(liveDetectionNotifierProvider);
    return liveDetectionState
        .map(
          data: (data) => const _LiveStatusIndicator(),
          error: (error) => const _OfflineStatusIndicator(),
          loading: (loading) => const _ConnectingStatusIndicator(),
        )
        .animate(
          onPlay: (controller) => controller.repeat(
            period: const Duration(seconds: 1),
            reverse: true,
          ),
          delay: const Duration(seconds: 1),
        )
        .fadeOut(curve: Curves.easeInBack);
  }
}

class _LiveStatusIndicator extends StatelessWidget {
  const _LiveStatusIndicator();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 12.0,
          height: 12.0,
          decoration: const BoxDecoration(
            color: Colors.red,
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(width: 8.0),
        const Text(
          "Live",
          style: TextStyle(
            color: Colors.red,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}

class _OfflineStatusIndicator extends StatelessWidget {
  const _OfflineStatusIndicator();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 12.0,
          height: 12.0,
          decoration: BoxDecoration(
            color: Colors.grey[500],
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(width: 8.0),
        Text(
          "Offline",
          style: TextStyle(
            color: Colors.grey[500],
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}

class _ConnectingStatusIndicator extends StatelessWidget {
  const _ConnectingStatusIndicator();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 12.0,
          height: 12.0,
          decoration: BoxDecoration(
            color: Colors.grey[500],
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(width: 8.0),
        Text(
          "Connecting...",
          style: TextStyle(
            color: Colors.grey[500],
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}
