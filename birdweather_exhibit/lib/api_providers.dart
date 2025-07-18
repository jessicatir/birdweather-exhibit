import "package:graphql/client.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";

part "api_providers.g.dart";

@riverpod
GraphQLClient birdWeatherGraphQLClient(BirdWeatherGraphQLClientRef ref) {
  final httpLink = HttpLink(
    "https://app.birdweather.com/graphql",
    defaultHeaders: {
      "Content-Type": "application/json",
    },
  );

  final wsLink = WebSocketLink(
    "wss://app.birdweather.com/graphql",
    config: const SocketClientConfig(
      autoReconnect: true,
      inactivityTimeout: Duration(seconds: 30),
    ),
  );

  final link = Link.split(
    (request) => request.isSubscription,
    wsLink,
    httpLink,
  );

  return GraphQLClient(
    link: link,
    cache: GraphQLCache(
      store: InMemoryStore(),
    ),
    defaultPolicies: DefaultPolicies(
      query: Policies(
        fetch: FetchPolicy.cacheFirst,
        error: ErrorPolicy.all,
        cacheReread: CacheRereadPolicy.mergeOptimistic,
      ),
      mutate: Policies(
        fetch: FetchPolicy.networkOnly,
        error: ErrorPolicy.all,
      ),
      subscribe: Policies(
        fetch: FetchPolicy.networkOnly,
        error: ErrorPolicy.all,
      ),
    ),
  );
}
