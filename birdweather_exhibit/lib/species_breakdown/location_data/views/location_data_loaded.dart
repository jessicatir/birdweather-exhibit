import "package:birdweather_exhibit/species_breakdown/location_data/components/location_data_live_status_indicator.dart";
import "package:birdweather_exhibit/species_breakdown/location_data/components/location_data_piece.dart";
import "package:birdweather_exhibit/species_breakdown/top_species/top_species_state.dart";
import "package:flutter/material.dart";

class LocationDataLoaded extends StatelessWidget {
  const LocationDataLoaded({
    required this.state,
    super.key,
  });

  final TopSpeciesState state;

  int convertCelsiusToNearestWholeFahrenheit(double tempCelsius) {
    return ((tempCelsius * 9 / 5) + 32).round();
  }

  @override
  Widget build(BuildContext context) {
    final sensorData = state.sensorData!;
    final environmentData = sensorData.sensorData.sensors!.environment;
    final humidity = environmentData?.humidity?.round();
    final temperature = environmentData?.temperature;
    final aqi = environmentData!.aqi;

    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _buildLocationDataLoadedContent(
                context,
                temperature: temperature,
                humidity: humidity,
                aqi: aqi,
                isSmallScreen: true,
              ),
            ),
          );
        } else {
          return Padding(
            padding: const EdgeInsets.all(32.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _buildLocationDataLoadedContent(
                context,
                temperature: temperature,
                humidity: humidity,
                aqi: aqi,
                isSmallScreen: false,
              ),
            ),
          );
        }
      },
    );
  }

  List<Widget> _buildLocationDataLoadedContent(
    BuildContext context, {
    required double? temperature,
    required int? humidity,
    required double? aqi,
    required bool isSmallScreen,
  }) {
    return [
      _conditionalFlexible(
        isSmallScreen: isSmallScreen,
        flex: 2,
        child: Image.asset(
          "assets/images/pullman-neighborhood.jpg",
          fit: BoxFit.fill,
        ),
      ),
      SizedBox(
        width: isSmallScreen ? 0 : 16.0,
        height: isSmallScreen ? 16.0 : 0,
      ),
      _conditionalFlexible(
        isSmallScreen: isSmallScreen,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: isSmallScreen
                ? CrossAxisAlignment.start
                : CrossAxisAlignment.start,
            children: [
              const LocationDataLiveStatusIndicator(),
              const SizedBox(height: 8),
              LocationDataPiece(
                label: "Location",
                value: "Pullman Neighborhood",
                isSmallScreen: isSmallScreen,
              ),
              const SizedBox(height: 8),
              if (temperature != null) ...[
                LocationDataPiece(
                  label: "Temperature",
                  value:
                      "${convertCelsiusToNearestWholeFahrenheit(temperature).toString()} \u00B0F",
                  isSmallScreen: isSmallScreen,
                ),
                const SizedBox(height: 8),
              ],
              if (humidity != null) ...[
                LocationDataPiece(
                  label: "Humidity",
                  value: "$humidity%",
                  isSmallScreen: isSmallScreen,
                ),
                const SizedBox(height: 8),
              ],
              if (aqi != null) ...[
                LocationDataPiece(
                  label: "AQI",
                  value: "$aqi",
                  isSmallScreen: isSmallScreen,
                ),
                const SizedBox(height: 8),
              ],
            ],
          ),
        ),
      ),
    ];
  }
}

Widget _conditionalFlexible({
  required bool isSmallScreen,
  required Widget child,
  int flex = 1,
  FlexFit fit = FlexFit.loose,
}) {
  return isSmallScreen
      ? child
      : Flexible(
          flex: flex,
          fit: fit,
          child: child,
        );
}

// class LocationDataLoaded extends StatelessWidget {
//   const LocationDataLoaded({
//     required this.state,
//     super.key,
//   });

//   final TopSpeciesState state;

//   int convertCelsiusToNearestWholeFahrenheit(double tempCelsius) {
//     return ((tempCelsius * 9 / 5) + 32).round();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final sensorData = state.sensorData!;
//     final environmentData = sensorData.sensorData.sensors!.environment;
//     final humidity = environmentData?.humidity?.round();
//     final temperature = environmentData?.temperature;
//     final aqi = environmentData!.aqi;
//     return Padding(
//       padding: const EdgeInsets.all(32.0),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Expanded(
//             flex: 2,
//             child: Image.asset(
//               "assets/images/pullman-neighborhood.jpg",
//               fit: BoxFit.fill,
//             ),
//           ),
//           const SizedBox(width: 16.0),
//           Flexible(
//             child: Padding(
//               padding: const EdgeInsets.all(8),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   const LocationDataLiveStatusIndicator(),
//                   const SizedBox(
//                     height: 8,
//                   ),
//                   const LocationDataPiece(
//                     label: "Location",
//                     value: "Pullman Neighborhood Pullman",
//                   ),
//                   const SizedBox(height: 8),
//                   if (temperature != null) ...[
//                     LocationDataPiece(
//                       label: "Temperature",
//                       value:
//                           "${convertCelsiusToNearestWholeFahrenheit(temperature).toString()} \u00B0F",
//                     ),
//                     const SizedBox(height: 8)
//                   ],
//                   if (humidity != null) ...[
//                     LocationDataPiece(
//                       label: "Humidity",
//                       value: "$humidity%",
//                     ),
//                     const SizedBox(height: 8)
//                   ],
//                   if (aqi != null) ...[
//                     LocationDataPiece(
//                       label: "AQI",
//                       value: "$aqi",
//                     ),
//                     const SizedBox(height: 8)
//                   ],
//                 ],
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
