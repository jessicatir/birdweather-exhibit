import "package:flutter/material.dart";

class LocationDataPiece extends StatelessWidget {
  const LocationDataPiece({
    required this.label,
    required this.value,
    super.key,
  });

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 16.0,
            color: Theme.of(context).colorScheme.outline,
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        Text(
          value,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22.0,
          ),
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
        )
      ],
    );
  }
}
