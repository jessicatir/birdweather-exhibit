import 'package:graphql/client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'api_providers.g.dart';

@riverpod
GraphQLClient birdWeatherGraphQLClient(BirdWeatherGraphQLClientRef ref) {
  final Link link = Link.split(
    (request) => request.isSubscription,
    WebSocketLink(
      "wss://app.birdweather.com/graphql",
    ),
    HttpLink(
      "https://app.birdweather.com/graphql",
    ),
  );
  return GraphQLClient(
    link: link,
    cache: GraphQLCache(),
  );
}
