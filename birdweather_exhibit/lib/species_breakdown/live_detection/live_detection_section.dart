import "package:birdweather_exhibit/species_breakdown/live_detection/components/live_detection_status_indicator.dart";
import "package:birdweather_exhibit/species_breakdown/live_detection/live_detection_notifier.dart";
import "package:birdweather_exhibit/species_breakdown/live_detection/views/live_detection_loaded.dart";
import "package:birdweather_exhibit/widgets/auto_scrolling_page.dart";
import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

class LiveDetectionSection extends ConsumerWidget {
  const LiveDetectionSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final liveDetectionState = ref.watch(liveDetectionNotifierProvider);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: AutoScrollingPage(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                "Most Recent Detection",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
              ),
              const LiveDetectionStatusIndicator(),
              liveDetectionState.map(
                  data: (data) {
                    final state = data.value;
                    return LiveDetectionLoaded(state: state);
                  },
                  error: (error) {
                    return const Center(child: Text("error occured"));
                  },
                  loading: (loading) =>
                      const Center(child: CircularProgressIndicator())),
            ],
          ),
        ),
      ),
    );
  }
}
