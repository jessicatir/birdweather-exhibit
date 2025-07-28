import "package:birdweather_exhibit/species_information/live_detection/components/live_detection_status_indicator.dart";
import "package:birdweather_exhibit/theme/glassmorphism_theme.dart";
import "package:flutter/material.dart";
import "package:flutter_animate/flutter_animate.dart";

class AnimatedDetectionCard extends StatelessWidget {
  final String detectionId;
  final String imageUrl;
  final String commonName;
  final String scientificName;
  final String timestamp;
  final bool isLive;
  final String description;
  final Animation<double>? slideAnimation;
  final Animation<double>? fadeAnimation;

  const AnimatedDetectionCard({
    required this.detectionId,
    required this.imageUrl,
    required this.commonName,
    required this.scientificName,
    required this.timestamp,
    required this.isLive,
    required this.description,
    this.slideAnimation,
    this.fadeAnimation,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Widget card = DetectionCard(
      imageUrl: imageUrl,
      commonName: commonName,
      scientificName: scientificName,
      timestamp: timestamp,
      isLive: isLive,
      description: description,
    );

    // If animations exist, wrap the card with animated builders
    if (slideAnimation != null && fadeAnimation != null) {
      card = AnimatedBuilder(
        animation: slideAnimation!,
        builder: (context, child) {
          return Transform.translate(
            offset: Offset(0, slideAnimation!.value),
            child: FadeTransition(
              opacity: fadeAnimation!,
              child: child,
            ),
          );
        },
        child: card,
      );
    }

    return card;
  }
}

class DetectionCard extends StatelessWidget {
  final String imageUrl;
  final String commonName;
  final String scientificName;
  final String timestamp;
  final bool isLive;
  final String description;

  const DetectionCard({
    required this.imageUrl,
    required this.commonName,
    required this.scientificName,
    required this.timestamp,
    required this.isLive,
    required this.description,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Animate(
      autoPlay: true,
      onPlay: (controller) => controller.repeat(
        period: GlassmorphismTheme.animationDuration,
        reverse: true,
      ),
      effects: [
        CustomEffect(
          builder: (BuildContext context, double value, Widget child) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: GlassmorphismTheme.standardBorderRadius,
                boxShadow:
                    GlassmorphismTheme.getAnimatedBoxShadow(isLive, value),
              ),
              child: child,
            );
          },
        ),
      ],
      child: ClipRRect(
        borderRadius: GlassmorphismTheme.standardBorderRadius,
        child: BackdropFilter(
          filter: GlassmorphismTheme.backdropBlur,
          child: Container(
            width: 500,
            padding: const EdgeInsets.all(16),
            decoration:
                GlassmorphismTheme.getGlassmorphismDecoration(isLive: isLive),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Header with status
                Row(
                  children: [
                    const Expanded(
                      child: Text(
                        "Recent Detection",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    LiveDetectionStatusIndicator(isLive: isLive),
                  ],
                ),
                const SizedBox(height: 8),

                // Bird image and info
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.network(
                        imageUrl,
                        width: 80,
                        height: 80,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            width: 80,
                            height: 80,
                            color: Colors.grey.withValues(alpha: 0.3),
                            child: const Icon(
                              Icons.image_not_supported,
                              color: Colors.white,
                              size: 30,
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            commonName,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 4),
                          Text(
                            scientificName,
                            style: TextStyle(
                              fontSize: 16,
                              fontStyle: FontStyle.italic,
                              color: Colors.white.withValues(alpha: 0.8),
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 4),
                          if (isLive)
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 4,
                              ),
                              decoration: GlassmorphismTheme
                                  .getContentContainerDecoration(
                                isHighlighted: false,
                                customBorderRadius: 8,
                              ),
                              child: const Text(
                                "Currently Calling!",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          else
                            Text(
                              "Last detected at ${_formatTimestamp(timestamp)}",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white.withValues(alpha: 0.8),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ],
                ),

                // Description
                if (description.isNotEmpty) ...[
                  const SizedBox(height: 12),
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration:
                        GlassmorphismTheme.getContentContainerDecoration(),
                    child: AutoScrollingText(
                      text: description,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white.withValues(alpha: 0.9),
                        height: 1.3,
                      ),
                      height: 110.0,
                      scrollDuration: const Duration(seconds: 28),
                      pauseDuration: const Duration(seconds: 3),
                    ),
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }

  String _formatTimestamp(String timestamp) {
    final dateTime = DateTime.parse(timestamp);
    final localTime = dateTime.toLocal();
    final hour = localTime.hour;
    final minute = localTime.minute.toString().padLeft(2, "0");
    final period = hour >= 12 ? "PM" : "AM";
    final displayHour = hour == 0 ? 12 : (hour > 12 ? hour - 12 : hour);
    return "$displayHour:$minute $period";
  }
}

/// A widget that automatically scrolls text content when it overflows the container.
///
/// Key features:
/// - Smooth forward scrolling with linear animation to prevent twitching
/// - Fade out/in transition instead of reverse scrolling for seamless looping
/// - Dynamic padding based on content length to prevent bounce-back on short text
/// - Strict clamping to actual scroll extent to avoid overshooting
class AutoScrollingText extends StatefulWidget {
  final String text;
  final TextStyle? style;
  final double height;
  final Duration scrollDuration;
  final Duration pauseDuration;

  const AutoScrollingText({
    required this.text,
    this.style,
    this.height = 60.0,
    this.scrollDuration = const Duration(seconds: 10),
    this.pauseDuration = const Duration(seconds: 2),
    super.key,
  });

  @override
  State<AutoScrollingText> createState() => _AutoScrollingTextState();
}

class _AutoScrollingTextState extends State<AutoScrollingText>
    with TickerProviderStateMixin {
  late AnimationController _scrollController;
  late AnimationController _fadeController;
  late Animation<double> _scrollAnimation;
  late Animation<double> _fadeAnimation;
  late ScrollController _textScrollController;
  bool _needsScrolling = false;
  double _textHeight = 0;

  @override
  void initState() {
    super.initState();
    _textScrollController = ScrollController();
    _scrollController = AnimationController(
      duration: widget.scrollDuration,
      vsync: this,
    );
    _fadeController = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );

    _scrollAnimation = Tween<double>(
      begin: 0.0,
      end: 0.98, // Stop slightly before the end to prevent overshooting
    ).animate(CurvedAnimation(
      parent: _scrollController,
      curve: Curves.linear,
    ));

    _fadeAnimation = Tween<double>(
      begin: 0,
      end: 1.0,
    ).animate(_fadeController);

    _scrollAnimation.addListener(_handleScrollAnimation);

    // Start with full opacity
    _fadeController.value = 1.0;

    // Check if scrolling is needed after the widget is built
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(milliseconds: 100), () {
        if (mounted) {
          _checkIfScrollingNeeded();
        }
      });
    });
  }

  void _checkIfScrollingNeeded() {
    if (!mounted) return;

    // Calculate text height
    final textPainter = TextPainter(
      text: TextSpan(text: widget.text, style: widget.style),
      textDirection: TextDirection.ltr,
      maxLines: null,
    );

    // Use the container width minus padding
    const containerWidth = 480.0 -
        32.0 -
        32.0; // card width - card padding - container padding (16*2)
    textPainter.layout(maxWidth: containerWidth);
    _textHeight = textPainter.size.height;

    setState(() {
      _needsScrolling = _textHeight > widget.height;
    });

    if (_needsScrolling) {
      _startScrolling();
    }
  }

  void _startScrolling() async {
    if (!mounted || !_needsScrolling) return;

    await Future.delayed(widget.pauseDuration);
    if (!mounted) return;

    while (mounted && _needsScrolling) {
      // Ensure we start from the top
      _scrollController.reset();
      _fadeController.value = 1.0;

      // Scroll down (forward)
      _scrollController.duration = widget.scrollDuration;
      await _scrollController.forward();
      if (!mounted) break;

      await Future.delayed(widget.pauseDuration);
      if (!mounted) break;

      // Fade out
      _fadeAnimation =
          Tween<double>(begin: 1.0, end: 0.0).animate(_fadeController);
      await _fadeController.forward();
      if (!mounted) break;

      // Reset to top while faded out
      _scrollController.reset();

      // Fade back in
      _fadeAnimation =
          Tween<double>(begin: 0.0, end: 1.0).animate(_fadeController);
      _fadeController.reset();
      await _fadeController.forward();
      if (!mounted) break;

      await Future.delayed(widget.pauseDuration);
      if (!mounted) break;
    }
  }

  void _handleScrollAnimation() {
    if (!mounted || !_needsScrolling || !_textScrollController.hasClients) {
      return;
    }

    // Get the actual maximum scroll extent from the ScrollController
    // This is the real, measured distance the text can scroll within the container
    final actualMaxExtent = _textScrollController.position.maxScrollExtent;

    // Dynamic padding: shorter text needs less padding to avoid overshooting
    // Longer text needs more padding to ensure the last line is fully visible
    final extraScrollPadding = actualMaxExtent < 50 ? 5.0 : 15.0;

    // Calculate the target scroll distance with padding for animation purposes
    // This allows the animation to go slightly beyond the actual content
    final safeMaxExtent = (actualMaxExtent + extraScrollPadding)
        .clamp(0.0, actualMaxExtent + extraScrollPadding);

    // Calculate where we should be in the animation
    final scrollOffset = _scrollAnimation.value * safeMaxExtent;

    // CRITICAL: Clamp the final scroll position to the actual maximum extent
    // This prevents the "bounce back" effect by ensuring we never scroll
    // beyond what the ScrollController can actually handle
    final clampedOffset = scrollOffset.clamp(0.0, actualMaxExtent);

    _textScrollController.jumpTo(clampedOffset);
  }

  @override
  void didUpdateWidget(AutoScrollingText oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.text != widget.text) {
      _scrollController.reset();
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _checkIfScrollingNeeded();
      });
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _fadeController.dispose();
    _textScrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: SizedBox(
        height: widget.height,
        child: FadeTransition(
          opacity: _fadeAnimation,
          child: SingleChildScrollView(
            controller: _textScrollController,
            physics: const NeverScrollableScrollPhysics(),
            child: Text(
              widget.text,
              style: widget.style,
            ),
          ),
        ),
      ),
    );
  }
}
