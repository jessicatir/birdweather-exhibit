import "package:birdweather_exhibit/api_providers.dart";
import "package:birdweather_exhibit/cache/cache_config.dart";
import "package:birdweather_exhibit/config/station_config.dart";
import "package:birdweather_exhibit/graphql/mobileDetections.graphql.dart";
import "package:birdweather_exhibit/graphql/newDetection.graphql.dart";
import "package:birdweather_exhibit/graphql/schema.graphql.dart";
import "package:birdweather_exhibit/graphql/stationSensors.graphql.dart";
import "package:birdweather_exhibit/graphql/topBirdWeatherSpecies.graphql.dart";
import "package:birdweather_exhibit/offline/hive_graphql_cache.dart";
import "package:flutter/foundation.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";

part "bird_weather_service.g.dart";

/// Simple provider to track if last data came from cache
final lastDataFromCacheProvider = StateProvider<bool>((ref) => false);

@riverpod
BirdWeatherService birdWeatherService(BirdWeatherServiceRef ref) {
  return BirdWeatherService(ref);
}

class BirdWeatherService {
  BirdWeatherService(this.ref);

  final BirdWeatherServiceRef ref;

  HiveGraphQLCache get _cache => ref.read(hiveGraphQLCacheProvider);
  StationConfig get _config => ref.read(stationConfigProvider);

  /// Execute operation with retry logic and exponential backoff
  Future<T> _executeWithRetry<T>(Future<T> Function() operation) async {
    int attempts = 0;
    Duration delay = CacheConfig.initialRetryDelay;

    while (attempts <= CacheConfig.maxRetries) {
      try {
        return await operation();
      } catch (error) {
        attempts++;

        // Don't retry if we've exceeded max attempts or error is not retryable
        if (attempts > CacheConfig.maxRetries || !_isRetryableError(error)) {
          rethrow;
        }

        debugPrint(
            "Retry attempt $attempts after ${delay.inMilliseconds}ms delay. Error: $error");

        // Wait with exponential backoff
        await Future.delayed(delay);
        delay = Duration(
          milliseconds:
              (delay.inMilliseconds * CacheConfig.retryBackoffMultiplier)
                  .round(),
        );
      }
    }

    throw Exception("Max retries exceeded");
  }

  /// Check if error is worth retrying (network-related errors only)
  bool _isRetryableError(dynamic error) {
    return _isNetworkError(error);
  }

  Future<Query$TopBirdWeatherSpecies> getTopBirdWeatherSpecies() async {
    final cacheKey = HiveGraphQLCache.topSpeciesKey(_config.stationId);

    try {
      // Execute with retry logic
      final result = await _executeWithRetry(() async {
        final birdWeatherApi = ref.read(birdWeatherGraphQLClientProvider);
        final response = await birdWeatherApi.query$TopBirdWeatherSpecies(
          Options$Query$TopBirdWeatherSpecies(
            variables: Variables$Query$TopBirdWeatherSpecies(
              period: Input$InputDuration(count: 24, unit: "hour"),
              limit: 10,
              stationIds: [_config.stationId],
            ),
          ),
        );

        if (!response.hasException && response.parsedData != null) {
          return response.parsedData!;
        } else {
          throw response.exception!;
        }
      });

      // Mark that data came from network (not cache)
      ref.read(lastDataFromCacheProvider.notifier).state = false;

      // Cache successful response
      await _cache.put(
        cacheKey,
        result.toJson(),
        CacheConfig.topSpeciesTTL,
      );
      return result;
    } catch (e) {
      // Check if this is a network/offline error
      if (_isNetworkError(e)) {
        debugPrint(
            "Network error for top species after retries, trying cache: $e");

        final cachedData = await _cache.get(cacheKey);
        if (cachedData != null) {
          // Mark that data came from cache (offline)
          ref.read(lastDataFromCacheProvider.notifier).state = true;

          debugPrint("Serving top species from cache due to network failure");
          return Query$TopBirdWeatherSpecies.fromJson(cachedData);
        }

        debugPrint("No cached top species data available");
      }

      // For all other errors or no cache available, rethrow
      rethrow;
    }
  }

  Future<Query$StationSensors> getStationSensorData() async {
    final cacheKey = HiveGraphQLCache.sensorDataKey(_config.stationId);

    try {
      // Execute with retry logic
      final result = await _executeWithRetry(() async {
        final birdWeatherApi = ref.read(birdWeatherGraphQLClientProvider);
        final response = await birdWeatherApi.query$StationSensors(
          Options$Query$StationSensors(
            variables:
                Variables$Query$StationSensors(stationId: _config.stationId),
          ),
        );

        if (!response.hasException && response.parsedData != null) {
          return response.parsedData!;
        } else {
          throw response.exception!;
        }
      });

      // Mark that data came from network (not cache)
      ref.read(lastDataFromCacheProvider.notifier).state = false;

      // Cache successful response
      await _cache.put(
        cacheKey,
        result.toJson(),
        CacheConfig.sensorDataTTL,
      );
      return result;
    } catch (e) {
      // Check if this is a network/offline error
      if (_isNetworkError(e)) {
        debugPrint(
            "Network error for sensor data after retries, trying cache: $e");

        final cachedData = await _cache.get(cacheKey);
        if (cachedData != null) {
          // Mark that data came from cache (offline)
          ref.read(lastDataFromCacheProvider.notifier).state = true;

          debugPrint("Serving sensor data from cache due to network failure");
          return Query$StationSensors.fromJson(cachedData);
        }

        debugPrint("No cached sensor data available");
      }

      // For all other errors or no cache available, rethrow
      rethrow;
    }
  }

  Future<Query$MobileDetections> getDetectionData({int limit = 3}) async {
    final cacheKey = HiveGraphQLCache.detectionsKey(_config.stationId, limit);

    try {
      // Execute with retry logic
      final result = await _executeWithRetry(() async {
        final birdWeatherApi = ref.read(birdWeatherGraphQLClientProvider);
        final response = await birdWeatherApi.query$MobileDetections(
          Options$Query$MobileDetections(
            variables: Variables$Query$MobileDetections(
              stationIds: [_config.stationId],
              limit: limit,
            ),
          ),
        );

        if (!response.hasException && response.parsedData != null) {
          return response.parsedData!;
        } else {
          throw response.exception!;
        }
      });

      // Cache successful response with short TTL for live data
      await _cache.put(
        cacheKey,
        result.toJson(),
        CacheConfig.liveDetectionTTL,
      );
      return result;
    } catch (e) {
      // Check if this is a network/offline error
      if (_isNetworkError(e)) {
        debugPrint(
            "Network error for detection data after retries, trying cache: $e");

        final cachedData = await _cache.get(cacheKey);
        if (cachedData != null) {
          debugPrint(
              "Serving detection data from cache due to network failure");
          return Query$MobileDetections.fromJson(cachedData);
        }

        debugPrint("No cached detection data available");
      }

      // For all other errors or no cache available, rethrow
      rethrow;
    }
  }

  Stream<Subscription$NewDetection> subscribeToNewDetections() {
    final birdWeatherApi = ref.read(birdWeatherGraphQLClientProvider);
    final subscription =
        birdWeatherApi.subscribe(Options$Subscription$NewDetection(
            variables: Variables$Subscription$NewDetection(
      stationIds: [_config.stationId],
    )));
    return subscription.map((response) {
      if (!response.hasException && response.parsedData != null) {
        return response.parsedData!;
      } else {
        throw response.exception!;
      }
    });
  }

  /// Check if error is network-related (offline, timeout, connection issues)
  bool _isNetworkError(dynamic error) {
    final errorString = error.toString().toLowerCase();

    // Check for common network error patterns
    final hasNetworkKeywords = errorString.contains("network") ||
        errorString.contains("connection") ||
        errorString.contains("timeout") ||
        errorString.contains("offline") ||
        errorString.contains("socket") ||
        errorString.contains("host") ||
        errorString.contains("unreachable") ||
        errorString.contains("failed to connect");

    // Check for common network-related HTTP status codes
    final hasNetworkStatusCodes = errorString.contains("502") || // Bad Gateway
        errorString.contains("503") || // Service Unavailable
        errorString.contains("504") || // Gateway Timeout
        errorString.contains("408") || // Request Timeout
        errorString.contains("429") || // Too Many Requests (rate limiting)
        errorString.contains("520") || // Unknown Error (Cloudflare)
        errorString.contains("521") || // Web Server Is Down (Cloudflare)
        errorString.contains("522") || // Connection Timed Out (Cloudflare)
        errorString.contains("523") || // Origin Is Unreachable (Cloudflare)
        errorString.contains("524"); // A Timeout Occurred (Cloudflare)

    return hasNetworkKeywords || hasNetworkStatusCodes;
  }
}
