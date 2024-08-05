import 'package:birdweather_exhibit/api_providers.dart';
import 'package:birdweather_exhibit/graphql/schema.graphql.dart';
import 'package:birdweather_exhibit/graphql/topBirdWeatherSpecies.graphql.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'bird_weather_service.g.dart';

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
}
