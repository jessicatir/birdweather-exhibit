import "package:flutter/material.dart";
import "package:flutter_animate/flutter_animate.dart";

class LiveDetectionStatusIndicator extends StatelessWidget {
  final bool isLive;

  const LiveDetectionStatusIndicator({
    required this.isLive,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    if (isLive) {
      // Show animated live indicator for this specific detection
      return const _LiveStatusIndicator()
          .animate(
            onPlay: (controller) => controller.repeat(
              period: const Duration(seconds: 1),
              reverse: true,
            ),
            delay: const Duration(seconds: 1),
          )
          .fadeOut(curve: Curves.easeInBack);
    } else {
      return const SizedBox.shrink();
    }
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
