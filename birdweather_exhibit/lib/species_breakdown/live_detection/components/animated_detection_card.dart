import "package:birdweather_exhibit/utils/utils.dart";
import "package:flutter/material.dart";
import "package:flutter_animate/flutter_animate.dart";

class AnimatedDetectionCard extends StatelessWidget {
  final String imageUrl;
  final String commonName;
  final String scientificName;
  final String timestamp;
  final bool isLive;

  const AnimatedDetectionCard({
    required this.imageUrl,
    required this.commonName,
    required this.scientificName,
    required this.timestamp,
    this.isLive = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final localTime = convertIso8601ToLocalTime(timestamp);
    return Animate(
      autoPlay: true,
      onPlay: (controller) =>
          controller.repeat(period: const Duration(seconds: 1), reverse: true),
      effects: [
        CustomEffect(
          builder: (
            BuildContext context,
            double value,
            Widget child,
          ) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                boxShadow: [
                  BoxShadow(
                    color: isLive
                        ? Colors.blue.withOpacity(0.5 + value * 0.5)
                        : Colors.transparent,
                    blurRadius: 20 + value * 10,
                    spreadRadius: 4 + value * 5,
                  ),
                ],
              ),
              child: child,
            );
          },
        )
      ],
      child: Card(
        elevation: 8,
        color: Theme.of(context).colorScheme.tertiaryContainer,
        surfaceTintColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  imageUrl,
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 16.0),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      commonName,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0,
                        color:
                            Theme.of(context).colorScheme.onTertiaryContainer,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      scientificName,
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 18.0,
                        color: Theme.of(context).colorScheme.outline,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 16.0),
                    ...isLive
                        ? [
                            Text(
                              "Currently Calling!",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 26.0,
                                color: Theme.of(context)
                                    .colorScheme
                                    .onTertiaryContainer,
                              ),
                            )
                          ]
                        : [
                            const Text(
                              "Last detected at",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                              ),
                            ),
                            Text(
                              localTime,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                                color: Theme.of(context)
                                    .colorScheme
                                    .onTertiaryContainer,
                              ),
                            ),
                          ]
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
