import "package:flutter/material.dart";

class SpeciesBreakdownPanel extends StatelessWidget {
  const SpeciesBreakdownPanel({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).colorScheme.onPrimary,
      surfaceTintColor: Colors.transparent,
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Center(
        child: child,
      ),
    );
  }
}
