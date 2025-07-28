import "dart:ui";
import "package:birdweather_exhibit/config/station_config.dart";
import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

class ImmersiveBackground extends ConsumerWidget {
  const ImmersiveBackground({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stationConfig = ref.watch(stationConfigProvider);
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
              "assets/images/${stationConfig.backgroundImageFilename}"),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        // Add a subtle overlay to improve text readability and create depth
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.black.withValues(alpha: 0.15),
              Colors.black.withValues(alpha: 0.35),
            ],
          ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 0.5, sigmaY: 0.5),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black.withValues(alpha: 0.05),
            ),
          ),
        ),
      ),
    );
  }
}
