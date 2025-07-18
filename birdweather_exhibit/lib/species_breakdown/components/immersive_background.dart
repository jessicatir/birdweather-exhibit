import "dart:ui";
import "package:flutter/material.dart";

class ImmersiveBackground extends StatelessWidget {
  const ImmersiveBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/pullman-neighborhood.jpg"),
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
