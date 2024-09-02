import "package:birdweather_exhibit/species_breakdown/top_species/top_species_notifier.dart";
import "package:flutter/material.dart";
import "package:flutter_animate/flutter_animate.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

class LocationDataLiveStatusIndicator extends ConsumerWidget {
  const LocationDataLiveStatusIndicator({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final topSpeciesState = ref.watch(topSpeciesNotifierProvider);
    return topSpeciesState
        .map(
          data: (data) => const _LiveStatusIndicator(),
          error: (error) => const _OfflineStatusIndicator(),
          loading: (loading) => const ConnectingStatusIndicator(),
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

class ConnectingStatusIndicator extends StatelessWidget {
  const ConnectingStatusIndicator({super.key});

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
