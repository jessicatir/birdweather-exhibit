import "package:flutter/material.dart";

class LocationDataPiece extends StatelessWidget {
  const LocationDataPiece({
    required this.label,
    required this.value,
    required this.isSmallScreen,
    super.key,
  });

  final String label;
  final String value;
  final bool isSmallScreen;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: isSmallScreen ? 14 : 16,
            color: Theme.of(context).colorScheme.outline,
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        Text(
          value,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: isSmallScreen ? 20 : 22,
          ),
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
        )
      ],
    );
  }
}
