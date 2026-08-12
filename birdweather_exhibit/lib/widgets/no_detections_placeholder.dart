import "package:flutter/material.dart";

/// Full-screen static image shown in place of the live exhibit while the default
/// station reports no detections (see [StationRotator]).
///
/// With no detections there is nothing to put in the detection card or the top
/// species list, so the live view reads as broken. This replaces it with a
/// single deliberate image instead.
///
/// Note that a 24-hour zero almost always means the station has stopped
/// reporting — not that the birds have stopped calling. Copy shown here should
/// say so rather than implying the neighborhood has gone silent.
///
/// To change what visitors see, replace the file at [imageAsset] — nothing else
/// needs to change. If that asset is missing or fails to decode, a plain
/// captioned fallback is drawn so the screen is never blank.
class NoDetectionsPlaceholder extends StatelessWidget {
  const NoDetectionsPlaceholder({super.key});

  /// The image shown full-screen. Replace this file to change the display; keep
  /// the same path (it is declared in `pubspec.yaml`).
  ///
  /// Keep replacements at or below 1920x1080: the exhibit's Fire TV Stick GPU
  /// caps textures at 4096px, and anything larger silently fails to render there
  /// (see CLAUDE.md). Also update [letterboxColor] to match the new image's
  /// border.
  static const String imageAsset = "assets/images/no_detections.png";

  /// Fills the gap when the screen's aspect ratio doesn't match the image's.
  /// Set to the image's own border color so the letterboxing is invisible.
  static const Color letterboxColor = Color(0xFF851D2F);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: letterboxColor,
      body: SizedBox.expand(
        child: Image.asset(
          imageAsset,
          // Contain, not cover: the image is a text slide, and cropping it on a
          // panel that isn't exactly 16:9 would cut words off. Letterboxing
          // against the image's own border color is invisible instead.
          fit: BoxFit.contain,
          errorBuilder: (context, error, stackTrace) =>
              const _MissingImageFallback(),
        ),
      ),
    );
  }
}

/// Drawn only if [NoDetectionsPlaceholder.imageAsset] can't be loaded.
class _MissingImageFallback extends StatelessWidget {
  const _MissingImageFallback();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF1B2A20),
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.cloud_off,
            size: 96,
            color: Colors.white.withValues(alpha: 0.7),
          ),
          const SizedBox(height: 24),
          Text(
            "The listening station is offline right now.",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 28,
              color: Colors.white.withValues(alpha: 0.9),
            ),
          ),
          const SizedBox(height: 12),
          Text(
            "The birds are still out there — this display will return "
            "on its own once the station is back.",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              color: Colors.white.withValues(alpha: 0.7),
            ),
          ),
        ],
      ),
    );
  }
}
