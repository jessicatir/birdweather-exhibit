/// Configuration for caching policies and TTL values
class CacheConfig {
  // Cache TTL (Time To Live) durations
  static const Duration liveDetectionTTL = Duration(minutes: 2);
  static const Duration topSpeciesTTL = Duration(minutes: 15);
  static const Duration sensorDataTTL = Duration(minutes: 5);
  static const Duration speciesMetadataTTL = Duration(hours: 24);

  // Cache keys
  static const String liveDetectionsKey = "live_detections";
  static const String topSpeciesKey = "top_species";
  static const String sensorDataKey = "sensor_data";
  static const String speciesMetadataKey = "species_metadata";

  // Hive box names
  static const String birdWeatherCacheBox = "birdweather_cache";

  // Network retry configuration
  static const int maxRetries = 3;
  static const Duration initialRetryDelay = Duration(seconds: 1);
  static const double retryBackoffMultiplier = 2.0;
}

/// Cache entry wrapper with TTL support
class CacheEntry<T> {
  final T data;
  final DateTime createdAt;
  final Duration ttl;

  CacheEntry({
    required this.data,
    required this.createdAt,
    required this.ttl,
  });

  bool get isExpired => DateTime.now().isAfter(createdAt.add(ttl));

  Map<String, dynamic> toJson() => {
        "data": data,
        "createdAt": createdAt.millisecondsSinceEpoch,
        "ttl": ttl.inMilliseconds,
      };

  factory CacheEntry.fromJson(Map<String, dynamic> json) => CacheEntry(
        data: json["data"],
        createdAt: DateTime.fromMillisecondsSinceEpoch(json["createdAt"]),
        ttl: Duration(milliseconds: json["ttl"]),
      );
}
