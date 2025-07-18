import "dart:ui";
import "package:flutter/material.dart";

/// Centralized glassmorphism theme system for consistent styling properties
class GlassmorphismTheme {
  // Private constructor to prevent instantiation
  GlassmorphismTheme._();

  // Blur configuration
  static const double blurSigmaX = 10.0;
  static const double blurSigmaY = 10.0;

  // Border radius configuration
  static const double borderRadius = 24.0;
  static const double smallBorderRadius = 12.0;
  static const double mediumBorderRadius = 16.0;

  // Animation configuration
  static const Duration animationDuration = Duration(seconds: 2);
  static const Duration fadeDelay = Duration(seconds: 1);

  // Shadow configuration
  static const Offset shadowOffset = Offset(0, 10);
  static const double baseShadowBlur = 20.0;
  static const double liveShadowBlurMin = 15.0;
  static const double liveShadowBlurMax = 25.0;
  static const double liveShadowSpreadMin = 2.0;
  static const double liveShadowSpreadMax = 5.0;

  /// Creates a backdrop filter with standard blur
  static ImageFilter get backdropBlur => ImageFilter.blur(
        sigmaX: blurSigmaX,
        sigmaY: blurSigmaY,
      );

  /// Creates animated box shadow for live detections
  static List<BoxShadow> getAnimatedBoxShadow(
      bool isLive, double animationValue) {
    return [
      BoxShadow(
        color: isLive
            ? Colors.blue.withValues(alpha: 0.3 + animationValue * 0.4)
            : Colors.black.withValues(alpha: 0.1),
        blurRadius: isLive
            ? liveShadowBlurMin +
                animationValue * (liveShadowBlurMax - liveShadowBlurMin)
            : baseShadowBlur,
        spreadRadius: isLive
            ? liveShadowSpreadMin +
                animationValue * (liveShadowSpreadMax - liveShadowSpreadMin)
            : 0,
        offset: shadowOffset,
      ),
    ];
  }

  /// Creates static box shadow
  static List<BoxShadow> getStaticBoxShadow(bool isLive) {
    return [
      BoxShadow(
        color: isLive
            ? Colors.blue.withValues(alpha: 0.3)
            : Colors.black.withValues(alpha: 0.1),
        blurRadius: isLive ? liveShadowBlurMin : baseShadowBlur,
        spreadRadius: isLive ? liveShadowSpreadMin : 0,
        offset: shadowOffset,
      ),
    ];
  }

  /// Creates glassmorphism gradient
  static LinearGradient getGlassmorphismGradient(bool isLive) {
    return LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: isLive
          ? [
              Colors.blue.withValues(alpha: 0.3),
              Colors.blue.withValues(alpha: 0.15),
            ]
          : [
              Colors.white.withValues(alpha: 0),
              Colors.white.withValues(alpha: 0),
            ],
    );
  }

  /// Creates glassmorphism border
  static Border getGlassmorphismBorder(bool isLive) {
    return Border.all(
      color: isLive
          ? Colors.blue.withValues(alpha: 0.6)
          : Colors.white.withValues(alpha: 0.4),
      width: isLive ? 2 : 1.5,
    );
  }

  /// Creates complete glassmorphism decoration
  static BoxDecoration getGlassmorphismDecoration({
    required bool isLive,
    double? customBorderRadius,
  }) {
    return BoxDecoration(
      gradient: getGlassmorphismGradient(isLive),
      borderRadius: BorderRadius.circular(customBorderRadius ?? borderRadius),
      border: getGlassmorphismBorder(isLive),
    );
  }

  /// Creates content container decoration (smaller, subtle)
  static BoxDecoration getContentContainerDecoration({
    bool isHighlighted = false,
    double? customBorderRadius,
  }) {
    return BoxDecoration(
      color: isHighlighted
          ? Colors.blue.withValues(alpha: 0.1)
          : Colors.black.withValues(alpha: 0.2),
      borderRadius:
          BorderRadius.circular(customBorderRadius ?? smallBorderRadius),
      border: isHighlighted
          ? Border.all(
              color: Colors.blue.withValues(alpha: 0.5),
              width: 1,
            )
          : null,
    );
  }

  /// Standard border radius values
  static BorderRadius get standardBorderRadius =>
      BorderRadius.circular(borderRadius);
  static BorderRadius get smallBorderRadiusValue =>
      BorderRadius.circular(smallBorderRadius);
  static BorderRadius get mediumBorderRadiusValue =>
      BorderRadius.circular(mediumBorderRadius);
}
