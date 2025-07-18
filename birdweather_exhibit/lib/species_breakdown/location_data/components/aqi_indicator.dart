import "package:birdweather_exhibit/utils/utils.dart";
import "package:flutter/material.dart";

/// Displays an AQI meter with the appropriate color
class AqiIndicator extends StatelessWidget {
  const AqiIndicator({
    required this.aqi,
    super.key,
    this.size = 24.0,
  });

  final double aqi;
  final double size;

  @override
  Widget build(BuildContext context) {
    final aqiColor = getAqiColor(aqi);

    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: aqiColor,
        border: Border.all(
          color: Colors.white.withValues(alpha: 0.3),
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: aqiColor.withValues(alpha: 0.4),
            blurRadius: 4,
            spreadRadius: 1,
          ),
        ],
      ),
    );
  }
}
