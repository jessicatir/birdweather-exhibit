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
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/pullman-neighborhood.jpg",
            fit: BoxFit.fill,
            height: 350,
          ),
          const SizedBox(width: 16.0),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const LocationDataLiveStatusIndicator(),
                  const SizedBox(
                    height: 8,
                  ),
                  const LocationDataPiece(
                    label: "Location",
                    value: "Pullman Neighborhood",
                  ),
                  const SizedBox(height: 8),
                  if (temperature != null) ...[
                    LocationDataPiece(
                      label: "Temperature",
                      value:
                          "${convertCelsiusToNearestWholeFahrenheit(temperature).toString()} \u00B0F",
                    ),
                    const SizedBox(height: 8)
                  ],
                  if (humidity != null) ...[
                    LocationDataPiece(
                      label: "Humidity",
                      value: "$humidity%",
                    ),
                    const SizedBox(height: 8)
                  ],
                  if (aqi != null) ...[
                    LocationDataPiece(
                      label: "AQI",
                      value: "$aqi",
                    ),
                    const SizedBox(height: 8)
                  ],
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
