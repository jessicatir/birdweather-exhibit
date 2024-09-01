import "package:birdweather_exhibit/api_providers.dart";
import "package:birdweather_exhibit/graphql/mobileDetections.graphql.dart";
import "package:birdweather_exhibit/graphql/newDetection.graphql.dart";
import "package:birdweather_exhibit/graphql/schema.graphql.dart";
import "package:birdweather_exhibit/graphql/stationSensors.graphql.dart";
import "package:birdweather_exhibit/graphql/topBirdWeatherSpecies.graphql.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";

part "bird_weather_service.g.dart";

@riverpod
BirdWeatherService birdWeatherService(BirdWeatherServiceRef ref) {
  return BirdWeatherService(ref);
}

class BirdWeatherService {
  BirdWeatherService(this.ref);

  final BirdWeatherServiceRef ref;

  Future<Query$TopBirdWeatherSpecies> getTopBirdWeatherSpecies() async {
    final birdWeatherApi = ref.read(birdWeatherGraphQLClientProvider);
    final response = await birdWeatherApi.query$TopBirdWeatherSpecies(
      Options$Query$TopBirdWeatherSpecies(
        variables: Variables$Query$TopBirdWeatherSpecies(
          period: Input$InputDuration(
            count: 24,
            unit: "hour",
          ),
          limit: 10,
          stationIds: ["2354"],
        ),
      ),
    );
    if (!response.hasException && response.parsedData != null) {
      return response.parsedData!;
    } else {
      throw response.exception!;
    }
  }

  Future<Query$StationSensors> getStationSensorData() async {
    final birdWeatherApi = ref.read(birdWeatherGraphQLClientProvider);
    final response = await birdWeatherApi.query$StationSensors(
      Options$Query$StationSensors(
        variables: Variables$Query$StationSensors(
          stationId: "2354",
        ),
      ),
    );
    if (!response.hasException && response.parsedData != null) {
      return response.parsedData!;
    } else {
      throw response.exception!;
    }
  }

  Future<Query$MobileDetections> getDetectionData() async {
    final birdWeatherApi = ref.read(birdWeatherGraphQLClientProvider);
    final response = await birdWeatherApi.query$MobileDetections(
      Options$Query$MobileDetections(
        variables: Variables$Query$MobileDetections(
          stationIds: ["2354"],
          limit: 1,
        ),
      ),
    );
    if (!response.hasException && response.parsedData != null) {
      return response.parsedData!;
    } else {
      throw response.exception!;
    }
  }

  Stream<Subscription$NewDetection> subscribeToNewDetections() {
    final birdWeatherApi = ref.read(birdWeatherGraphQLClientProvider);
    final subscription =
        birdWeatherApi.subscribe(Options$Subscription$NewDetection(
            variables: Variables$Subscription$NewDetection(
      stationIds: ["2354"],
    )));
    return subscription.map((response) {
      if (!response.hasException && response.parsedData != null) {
        return response.parsedData!;
      } else {
        throw response.exception!;
      }
    });
  }
}
