import 'package:flutter/material.dart';

class BirdTile extends StatelessWidget {
  const BirdTile({
    super.key,
    required this.imageUrl,
    required this.commonName,
    required this.scientificName,
    required this.detectionCount,
    required this.borderColor,
  });

  final String imageUrl;
  final String commonName;
  final String scientificName;
  final int detectionCount;
  final String borderColor;

  Color hexToColor(String hexString) {
    hexString = hexString.replaceFirst("#", "");
    if (hexString.length == 6) {
      hexString = "ff$hexString";
    }
    return Color(int.parse(hexString, radix: 16));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 500),
          child: Container(
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              border: Border.all(color: hexToColor(borderColor), width: 3.0),
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Row(
              children: [
                // Image
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    imageUrl,
                    width: 50.0,
                    height: 50.0,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 12.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        commonName,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                      ),
                      Text(
                        scientificName,
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 14.0,
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        detectionCount.toString(),
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                          color: Colors.green,
                        ),
                      ),
                      const Text(
                        "Detections",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0,
                          //color: Colors.green,
                        ),
                      ),
                    ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
