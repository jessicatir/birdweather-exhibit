import "dart:convert";
import "package:birdweather_exhibit/cache/cache_config.dart";
import "package:flutter/foundation.dart";
import "package:hive_flutter/hive_flutter.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";

part "hive_graphql_cache.g.dart";

@Riverpod(keepAlive: true)
HiveGraphQLCache hiveGraphQLCache(HiveGraphQLCacheRef ref) {
  return HiveGraphQLCache();
}

/// Pure caching layer for GraphQL responses using Hive
class HiveGraphQLCache {
  Box<String>? _cacheBox;
  bool _isInitialized = false;

  /// Initialize Hive cache
  Future<void> initialize() async {
    if (_isInitialized) return;

    try {
      await Hive.initFlutter();
      _cacheBox = await Hive.openBox<String>(CacheConfig.birdWeatherCacheBox);
      await _cleanExpiredEntries();
      _isInitialized = true;
      debugPrint("HiveGraphQLCache initialized successfully");
    } catch (e) {
      debugPrint("Failed to initialize HiveGraphQLCache: $e");
      // Don't throw - app should work without cache
    }
  }

  /// Store GraphQL response data with TTL
  Future<void> put(String key, Map<String, dynamic> data, Duration ttl) async {
    if (!_isInitialized || _cacheBox == null) {
      debugPrint("Cache not initialized, skipping put for key: $key");
      return;
    }

    try {
      final entry = CacheEntry(
        data: data,
        createdAt: DateTime.now(),
        ttl: ttl,
      );

      final jsonString = jsonEncode(entry.toJson());
      await _cacheBox!.put(key, jsonString);
      debugPrint("Cached data for key: $key (TTL: ${ttl.inMinutes}min)");
    } catch (e) {
      debugPrint("Failed to cache data for key $key: $e");
      // Don't throw - caching failure shouldn't break the app
    }
  }

  /// Retrieve cached GraphQL response data
  Future<Map<String, dynamic>?> get(String key) async {
    if (!_isInitialized || _cacheBox == null) {
      debugPrint("Cache not initialized, cannot get key: $key");
      return null;
    }

    try {
      final jsonString = _cacheBox!.get(key);
      if (jsonString == null) {
        debugPrint("Cache miss for key: $key");
        return null;
      }

      final json = jsonDecode(jsonString) as Map<String, dynamic>;
      final entry = CacheEntry<Map<String, dynamic>>.fromJson(json);

      if (entry.isExpired) {
        debugPrint("Cache expired for key: $key, removing");
        await _cacheBox!.delete(key);
        return null;
      }

      debugPrint("Cache hit for key: $key");
      return entry.data;
    } catch (e) {
      debugPrint("Failed to get cached data for key $key: $e");
      // Remove corrupted cache entry
      await _cacheBox?.delete(key);
      return null;
    }
  }

  /// Check if key exists and is not expired
  Future<bool> contains(String key) async {
    final data = await get(key);
    return data != null;
  }

  /// Remove specific cache entry
  Future<void> remove(String key) async {
    if (!_isInitialized || _cacheBox == null) return;

    try {
      await _cacheBox!.delete(key);
      debugPrint("Removed cache entry for key: $key");
    } catch (e) {
      debugPrint("Failed to remove cache entry for key $key: $e");
    }
  }

  /// Clear all cached data
  Future<void> clear() async {
    if (!_isInitialized || _cacheBox == null) return;

    try {
      await _cacheBox!.clear();
      debugPrint("Cleared all cache entries");
    } catch (e) {
      debugPrint("Failed to clear cache: $e");
    }
  }

  /// Get cache statistics
  Map<String, dynamic> getStats() {
    if (!_isInitialized || _cacheBox == null) {
      return {"totalEntries": 0, "isInitialized": false};
    }

    return {
      "totalEntries": _cacheBox!.length,
      "isInitialized": _isInitialized,
      "cacheSize": _cacheBox!.keys.length,
    };
  }

  /// Clean expired cache entries
  Future<void> _cleanExpiredEntries() async {
    if (_cacheBox == null) return;

    try {
      final keysToDelete = <String>[];
      int expiredCount = 0;

      for (final key in _cacheBox!.keys) {
        final jsonString = _cacheBox!.get(key);
        if (jsonString == null) continue;

        try {
          final json = jsonDecode(jsonString) as Map<String, dynamic>;
          final entry = CacheEntry.fromJson(json);

          if (entry.isExpired) {
            keysToDelete.add(key.toString());
            expiredCount++;
          }
        } catch (e) {
          // Invalid entry, mark for deletion
          keysToDelete.add(key.toString());
        }
      }

      for (final key in keysToDelete) {
        await _cacheBox!.delete(key);
      }

      if (expiredCount > 0) {
        debugPrint("Cleaned $expiredCount expired cache entries");
      }
    } catch (e) {
      debugPrint("Failed to clean expired entries: $e");
    }
  }

  /// Generate cache key for GraphQL operations
  static String generateKey(String operation, Map<String, dynamic>? variables) {
    final variablesString = variables != null ? jsonEncode(variables) : "";
    final keyBase = "${operation}_$variablesString";

    // Use a simple hash to keep keys manageable
    return "${operation}_${keyBase.hashCode.abs()}";
  }

  /// Generate cache key for specific BirdWeather operations
  static String topSpeciesKey(String stationId) => "top_species_$stationId";
  static String sensorDataKey(String stationId) => "sensor_data_$stationId";
  static String detectionsKey(String stationId, int limit) =>
      "detections_${stationId}_$limit";

  /// Dispose resources
  Future<void> dispose() async {
    try {
      await _cacheBox?.close();
      _isInitialized = false;
      debugPrint("HiveGraphQLCache disposed");
    } catch (e) {
      debugPrint("Error disposing HiveGraphQLCache: $e");
    }
  }
}
