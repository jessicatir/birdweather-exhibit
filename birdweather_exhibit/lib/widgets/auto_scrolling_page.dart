import "package:flutter/material.dart";

class AutoScrollingPage extends StatefulWidget {
  const AutoScrollingPage({
    required this.child,
    this.scrollDuration = const Duration(seconds: 10),
    this.autoScrollEnabled = true,
    super.key,
  });

  final Widget child;
  final Duration scrollDuration;
  final bool autoScrollEnabled;

  @override
  State<AutoScrollingPage> createState() => _AutoScrollingPageState();
}

class _AutoScrollingPageState extends State<AutoScrollingPage>
    with SingleTickerProviderStateMixin {
  late ScrollController _scrollController;
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _scrollController = ScrollController();

    if (widget.autoScrollEnabled) {
      _animationController = AnimationController(
        vsync: this,
        duration: widget.scrollDuration,
      );

      _animation = CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      )..addListener(() {
          _scrollController.jumpTo(
            _animation.value * _scrollController.position.maxScrollExtent,
          );
        });

      _startScrolling();
    }
  }

  void _startScrolling() {
    _animationController.forward().then((_) {
      _reverseScrolling();
    });
  }

  void _reverseScrolling() {
    _animationController.reverse().then((_) {
      _startScrolling();
    });
  }

  @override
  void dispose() {
    if (widget.autoScrollEnabled) {
      _animationController.dispose();
    }
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: _scrollController,
      child: widget.child,
    );
  }
}
