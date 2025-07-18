// import "package:birdweather_exhibit/theme/glassmorphism_theme.dart";
// import "package:flutter/material.dart";

// class BirdTile extends StatelessWidget {
//   const BirdTile({
//     required this.imageUrl,
//     required this.commonName,
//     required this.scientificName,
//     required this.detectionCount,
//     required this.borderColor,
//     super.key,
//   });

//   final String imageUrl;
//   final String commonName;
//   final String scientificName;
//   final int detectionCount;
//   final String borderColor;

//   Color hexToColor(String hexString) {
//     hexString = hexString.replaceFirst("#", "");
//     if (hexString.length == 6) {
//       hexString = "ff$hexString";
//     }
//     return Color(int.parse(hexString, radix: 16));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(2),
//       child: Center(
//         child: ConstrainedBox(
//           constraints: const BoxConstraints(
//             maxWidth: 500,
//           ),
//           child: ClipRRect(
//             borderRadius: GlassmorphismTheme.smallBorderRadiusValue,
//             child: BackdropFilter(
//               filter: GlassmorphismTheme.backdropBlur,
//               child: Container(
//                 padding: const EdgeInsets.all(12.0),
//                 decoration: GlassmorphismTheme.getGlassmorphismDecoration(
//                   isLive: false,
//                   customBorderRadius: GlassmorphismTheme.smallBorderRadius,
//                 ),
//                 child: Row(
//                   children: [
//                     ClipRRect(
//                       borderRadius: BorderRadius.circular(8.0),
//                       child: Image.network(
//                         imageUrl,
//                         width: 60.0,
//                         height: 60.0,
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                     const SizedBox(width: 12.0),
//                     Expanded(
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             commonName,
//                             style: const TextStyle(
//                               fontWeight: FontWeight.bold,
//                               fontSize: 18.0,
//                               color: Colors.white,
//                             ),
//                             maxLines: 2,
//                             overflow: TextOverflow.ellipsis,
//                           ),
//                           Text(
//                             scientificName,
//                             style: TextStyle(
//                               fontStyle: FontStyle.italic,
//                               fontSize: 16.0,
//                               color: Colors.white.withValues(alpha: 0.8),
//                             ),
//                             maxLines: 2,
//                             overflow: TextOverflow.ellipsis,
//                           ),
//                         ],
//                       ),
//                     ),
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         Text(
//                           detectionCount.toString(),
//                           style: const TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 18.0,
//                             color: Colors.lightGreenAccent,
//                           ),
//                           maxLines: 3,
//                         ),
//                         const Text(
//                           "Detections",
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 16.0,
//                             color: Colors.white,
//                           ),
//                           maxLines: 3,
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
