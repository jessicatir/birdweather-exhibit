import 'package:graphql/client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'api_providers.g.dart';

@riverpod
GraphQLClient birdWeatherGraphQLClient(BirdWeatherGraphQLClientRef ref) {
  return GraphQLClient(
    link: HttpLink("https://app.birdweather.com/graphql"),
    cache: GraphQLCache(),
  );
}
