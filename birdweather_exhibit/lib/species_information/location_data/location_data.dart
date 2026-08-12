import "package:birdweather_exhibit/config/station_config.dart";
import "package:birdweather_exhibit/species_information/location_data/components/aqi_indicator.dart";
import "package:birdweather_exhibit/species_information/location_data/components/location_data_item.dart";
import "package:birdweather_exhibit/species_information/location_data/components/location_data_live_status_indicator.dart";
import "package:birdweather_exhibit/species_information/top_species/top_species_notifier.dart";
import "package:birdweather_exhibit/species_information/top_species/top_species_state.dart";
import "package:birdweather_exhibit/theme/glassmorphism_theme.dart";
import "package:birdweather_exhibit/utils/utils.dart";
import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

class LocationData extends ConsumerWidget {
  const LocationData({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final topSpeciesState = ref.watch(topSpeciesNotifierProvider);

    return topSpeciesState.map(
      data: (data) => _LocationDataLoadedWidget(data: data),
      error: (error) => const _ErrorWidget(),
      loading: (loading) => const _LoadingWidget(),
    );
  }
}

class _LocationDataLoadedWidget extends ConsumerWidget {
  final AsyncData<TopSpeciesState> data;

  const _LocationDataLoadedWidget({required this.data});

  // ---- Edit the wording here -------------------------------------------
  /// Footnote under the readings.
  ///
  /// The sensor is on the listening station itself, in the open, so it runs
  /// warm: measured against Pullman's actual conditions it read ~14 °F high
  /// (96.5 °F vs 82.3 °F on a sunny afternoon). Without this note visitors
  /// read it as the air temperature and reasonably conclude the exhibit is
  /// broken.
  static const String _sensorNote =
      "These readings come from a sensor on the listening station itself. "
      "It sits in the sun, so the temperature often reads warmer than the shade.";
  // ----------------------------------------------------------------------

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = data.value;
    final sensorData = state.sensorData;
    final config = ref.read(stationConfigProvider);

    double? temperature;
    int? humidity;
    double? aqi;

    if (sensorData != null) {
      final environmentData = sensorData.sensorData.sensors?.environment;
      temperature = environmentData?.temperature;
      humidity = environmentData?.humidity?.round();
      aqi = environmentData?.aqi;
    }

    return ClipRRect(
      borderRadius: GlassmorphismTheme.standardBorderRadius,
      child: BackdropFilter(
        filter: GlassmorphismTheme.backdropBlur,
        child: Container(
          width: 300,
          padding: const EdgeInsets.all(20),
          decoration:
              GlassmorphismTheme.getGlassmorphismDecoration(isLive: false),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const LocationDataLiveStatusIndicator(),
              const SizedBox(height: 12),
              LocationDataItem(
                label: "Location",
                value: config.locationName,
                icon: Icons.location_on,
              ),
              if (temperature != null) ...[
                const SizedBox(height: 12),
                LocationDataItem(
                  label: "Temperature",
                  value:
                      "${convertCelsiusToNearestWholeFahrenheit(temperature)} °F",
                  icon: Icons.thermostat,
                ),
              ],
              if (humidity != null) ...[
                const SizedBox(height: 12),
                LocationDataItem(
                  label: "Humidity",
                  value: "$humidity%",
                  icon: Icons.water_drop,
                ),
              ],
              if (aqi != null) ...[
                const SizedBox(height: 12),
                _AqiDataItem(aqi: aqi),
              ],
              // Only worth explaining when there is a reading on screen to
              // explain.
              if (temperature != null) ...[
                const SizedBox(height: 16),
                Text(
                  _sensorNote,
                  style: TextStyle(
                    fontSize: 13,
                    height: 1.3,
                    fontStyle: FontStyle.italic,
                    color: Colors.white.withValues(alpha: 0.6),
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}

class _AqiDataItem extends StatelessWidget {
  final double aqi;

  const _AqiDataItem({required this.aqi});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AqiIndicator(aqi: aqi, size: 20),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "AQI",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white.withValues(alpha: 0.8),
                  fontWeight: FontWeight.w500,
                ),
              ),
              Row(
                children: [
                  Text(
                    aqi.round().toString(),
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    getAqiLabel(aqi),
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white.withValues(alpha: 0.8),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _ErrorWidget extends StatelessWidget {
  const _ErrorWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.red.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.red.withValues(alpha: 0.3)),
      ),
      child: const Text(
        "Error loading location data",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}

class _LoadingWidget extends StatelessWidget {
  const _LoadingWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.15),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white.withValues(alpha: 0.2)),
      ),
      child: const CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
      ),
    );
  }
}
