import "package:birdweather_exhibit/theme/glassmorphism_theme.dart";
import "package:flutter/material.dart";

/// A static informational card explaining what the exhibit is showing.
///
/// The copy lives in [_title] and [_body] below — edit those strings to
/// change the displayed text. Use a blank line (\n\n) to separate paragraphs.
class ExhibitInfoCard extends StatelessWidget {
  const ExhibitInfoCard({super.key});

  // ---- Edit the wording here -------------------------------------------
  static const String _title = "About This Exhibit";
  static const String _body =
      "This display shows live bird activity detected in a neighborhood in "
      "Pullman, WA. A BirdWeather station listens around the clock, using a "
      "bird sound detection algorithm to identify each species by its call in "
      "real time. It works much like the Merlin Bird ID app from the Cornell "
      "Lab of Ornithology, which can also recognize birds by their sounds.\n\n"
      "On the left are the most frequently detected birds over the past 24 "
      "hours. In the center, the most recent detections appear as they "
      "happen. Above, you can see current local conditions.";
  static const String _credit =
      "Exhibit by Allie & Jessica Tir.\n"
      "Built in Flutter 3.29.3 using the BirdWeather API/PUC.";
  // ----------------------------------------------------------------------

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: GlassmorphismTheme.standardBorderRadius,
      child: BackdropFilter(
        filter: GlassmorphismTheme.backdropBlur,
        child: Container(
          width: 420,
          padding: const EdgeInsets.all(20),
          decoration:
              GlassmorphismTheme.getGlassmorphismDecoration(isLive: false),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  Icon(
                    Icons.info_outline,
                    color: Colors.white,
                    size: 24,
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      _title,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Text(
                _body,
                style: TextStyle(
                  fontSize: 16,
                  height: 1.4,
                  color: Colors.white.withValues(alpha: 0.85),
                ),
              ),
              const SizedBox(height: 16),
              Text(
                _credit,
                style: TextStyle(
                  fontSize: 13,
                  fontStyle: FontStyle.italic,
                  color: Colors.white.withValues(alpha: 0.6),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
