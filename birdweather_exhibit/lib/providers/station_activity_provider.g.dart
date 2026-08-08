// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'station_activity_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$stationDetectionCountHash() =>
    r'6d16693381eba0736c3b353ae8cd5425fe7a5875';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// Total detections for [stationId] over the last 24 hours.
///
/// Used to decide whether a station currently has enough data to be worth
/// showing. This is a station-agnostic check that runs outside the per-station
/// display scopes, so it can gate the scoped providers.
///
/// It asks the API for the count itself (`Station.counts`) rather than summing a
/// `topSpecies` list: the exhibit runs 24/7 on a Fire Stick, and this runs per
/// station every 10 minutes, so pulling full species records — image URLs,
/// Wikipedia summaries and all — to derive one integer is bandwidth the display
/// can't spare.
///
/// Unlike every other network call in this app it deliberately skips
/// [BirdWeatherService]'s retry-and-cache-fallback path. Retrying is that
/// helper's job for data the exhibit *displays*; this is a cheap, purely
/// advisory poll that already repeats on a 10-minute timer, and a cached answer
/// would be worse than none — the whole point is to know what a station is doing
/// *now*. A failed check just leaves the rotation as it is until the next tick.
///
/// Failures propagate as an error rather than being reported as a count of 0:
/// callers must be able to tell "the station really heard nothing" from "we
/// couldn't ask". Both leave a station out of the rotation (an errored
/// `AsyncValue` has no fresh value to compare against the threshold), but only a
/// genuine zero at the default station swaps the exhibit for the placeholder.
///
/// Copied from [stationDetectionCount].
@ProviderFor(stationDetectionCount)
const stationDetectionCountProvider = StationDetectionCountFamily();

/// Total detections for [stationId] over the last 24 hours.
///
/// Used to decide whether a station currently has enough data to be worth
/// showing. This is a station-agnostic check that runs outside the per-station
/// display scopes, so it can gate the scoped providers.
///
/// It asks the API for the count itself (`Station.counts`) rather than summing a
/// `topSpecies` list: the exhibit runs 24/7 on a Fire Stick, and this runs per
/// station every 10 minutes, so pulling full species records — image URLs,
/// Wikipedia summaries and all — to derive one integer is bandwidth the display
/// can't spare.
///
/// Unlike every other network call in this app it deliberately skips
/// [BirdWeatherService]'s retry-and-cache-fallback path. Retrying is that
/// helper's job for data the exhibit *displays*; this is a cheap, purely
/// advisory poll that already repeats on a 10-minute timer, and a cached answer
/// would be worse than none — the whole point is to know what a station is doing
/// *now*. A failed check just leaves the rotation as it is until the next tick.
///
/// Failures propagate as an error rather than being reported as a count of 0:
/// callers must be able to tell "the station really heard nothing" from "we
/// couldn't ask". Both leave a station out of the rotation (an errored
/// `AsyncValue` has no fresh value to compare against the threshold), but only a
/// genuine zero at the default station swaps the exhibit for the placeholder.
///
/// Copied from [stationDetectionCount].
class StationDetectionCountFamily extends Family<AsyncValue<int>> {
  /// Total detections for [stationId] over the last 24 hours.
  ///
  /// Used to decide whether a station currently has enough data to be worth
  /// showing. This is a station-agnostic check that runs outside the per-station
  /// display scopes, so it can gate the scoped providers.
  ///
  /// It asks the API for the count itself (`Station.counts`) rather than summing a
  /// `topSpecies` list: the exhibit runs 24/7 on a Fire Stick, and this runs per
  /// station every 10 minutes, so pulling full species records — image URLs,
  /// Wikipedia summaries and all — to derive one integer is bandwidth the display
  /// can't spare.
  ///
  /// Unlike every other network call in this app it deliberately skips
  /// [BirdWeatherService]'s retry-and-cache-fallback path. Retrying is that
  /// helper's job for data the exhibit *displays*; this is a cheap, purely
  /// advisory poll that already repeats on a 10-minute timer, and a cached answer
  /// would be worse than none — the whole point is to know what a station is doing
  /// *now*. A failed check just leaves the rotation as it is until the next tick.
  ///
  /// Failures propagate as an error rather than being reported as a count of 0:
  /// callers must be able to tell "the station really heard nothing" from "we
  /// couldn't ask". Both leave a station out of the rotation (an errored
  /// `AsyncValue` has no fresh value to compare against the threshold), but only a
  /// genuine zero at the default station swaps the exhibit for the placeholder.
  ///
  /// Copied from [stationDetectionCount].
  const StationDetectionCountFamily();

  /// Total detections for [stationId] over the last 24 hours.
  ///
  /// Used to decide whether a station currently has enough data to be worth
  /// showing. This is a station-agnostic check that runs outside the per-station
  /// display scopes, so it can gate the scoped providers.
  ///
  /// It asks the API for the count itself (`Station.counts`) rather than summing a
  /// `topSpecies` list: the exhibit runs 24/7 on a Fire Stick, and this runs per
  /// station every 10 minutes, so pulling full species records — image URLs,
  /// Wikipedia summaries and all — to derive one integer is bandwidth the display
  /// can't spare.
  ///
  /// Unlike every other network call in this app it deliberately skips
  /// [BirdWeatherService]'s retry-and-cache-fallback path. Retrying is that
  /// helper's job for data the exhibit *displays*; this is a cheap, purely
  /// advisory poll that already repeats on a 10-minute timer, and a cached answer
  /// would be worse than none — the whole point is to know what a station is doing
  /// *now*. A failed check just leaves the rotation as it is until the next tick.
  ///
  /// Failures propagate as an error rather than being reported as a count of 0:
  /// callers must be able to tell "the station really heard nothing" from "we
  /// couldn't ask". Both leave a station out of the rotation (an errored
  /// `AsyncValue` has no fresh value to compare against the threshold), but only a
  /// genuine zero at the default station swaps the exhibit for the placeholder.
  ///
  /// Copied from [stationDetectionCount].
  StationDetectionCountProvider call(
    String stationId,
  ) {
    return StationDetectionCountProvider(
      stationId,
    );
  }

  @override
  StationDetectionCountProvider getProviderOverride(
    covariant StationDetectionCountProvider provider,
  ) {
    return call(
      provider.stationId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'stationDetectionCountProvider';
}

/// Total detections for [stationId] over the last 24 hours.
///
/// Used to decide whether a station currently has enough data to be worth
/// showing. This is a station-agnostic check that runs outside the per-station
/// display scopes, so it can gate the scoped providers.
///
/// It asks the API for the count itself (`Station.counts`) rather than summing a
/// `topSpecies` list: the exhibit runs 24/7 on a Fire Stick, and this runs per
/// station every 10 minutes, so pulling full species records — image URLs,
/// Wikipedia summaries and all — to derive one integer is bandwidth the display
/// can't spare.
///
/// Unlike every other network call in this app it deliberately skips
/// [BirdWeatherService]'s retry-and-cache-fallback path. Retrying is that
/// helper's job for data the exhibit *displays*; this is a cheap, purely
/// advisory poll that already repeats on a 10-minute timer, and a cached answer
/// would be worse than none — the whole point is to know what a station is doing
/// *now*. A failed check just leaves the rotation as it is until the next tick.
///
/// Failures propagate as an error rather than being reported as a count of 0:
/// callers must be able to tell "the station really heard nothing" from "we
/// couldn't ask". Both leave a station out of the rotation (an errored
/// `AsyncValue` has no fresh value to compare against the threshold), but only a
/// genuine zero at the default station swaps the exhibit for the placeholder.
///
/// Copied from [stationDetectionCount].
class StationDetectionCountProvider extends AutoDisposeFutureProvider<int> {
  /// Total detections for [stationId] over the last 24 hours.
  ///
  /// Used to decide whether a station currently has enough data to be worth
  /// showing. This is a station-agnostic check that runs outside the per-station
  /// display scopes, so it can gate the scoped providers.
  ///
  /// It asks the API for the count itself (`Station.counts`) rather than summing a
  /// `topSpecies` list: the exhibit runs 24/7 on a Fire Stick, and this runs per
  /// station every 10 minutes, so pulling full species records — image URLs,
  /// Wikipedia summaries and all — to derive one integer is bandwidth the display
  /// can't spare.
  ///
  /// Unlike every other network call in this app it deliberately skips
  /// [BirdWeatherService]'s retry-and-cache-fallback path. Retrying is that
  /// helper's job for data the exhibit *displays*; this is a cheap, purely
  /// advisory poll that already repeats on a 10-minute timer, and a cached answer
  /// would be worse than none — the whole point is to know what a station is doing
  /// *now*. A failed check just leaves the rotation as it is until the next tick.
  ///
  /// Failures propagate as an error rather than being reported as a count of 0:
  /// callers must be able to tell "the station really heard nothing" from "we
  /// couldn't ask". Both leave a station out of the rotation (an errored
  /// `AsyncValue` has no fresh value to compare against the threshold), but only a
  /// genuine zero at the default station swaps the exhibit for the placeholder.
  ///
  /// Copied from [stationDetectionCount].
  StationDetectionCountProvider(
    String stationId,
  ) : this._internal(
          (ref) => stationDetectionCount(
            ref as StationDetectionCountRef,
            stationId,
          ),
          from: stationDetectionCountProvider,
          name: r'stationDetectionCountProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$stationDetectionCountHash,
          dependencies: StationDetectionCountFamily._dependencies,
          allTransitiveDependencies:
              StationDetectionCountFamily._allTransitiveDependencies,
          stationId: stationId,
        );

  StationDetectionCountProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.stationId,
  }) : super.internal();

  final String stationId;

  @override
  Override overrideWith(
    FutureOr<int> Function(StationDetectionCountRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: StationDetectionCountProvider._internal(
        (ref) => create(ref as StationDetectionCountRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        stationId: stationId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<int> createElement() {
    return _StationDetectionCountProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is StationDetectionCountProvider &&
        other.stationId == stationId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, stationId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin StationDetectionCountRef on AutoDisposeFutureProviderRef<int> {
  /// The parameter `stationId` of this provider.
  String get stationId;
}

class _StationDetectionCountProviderElement
    extends AutoDisposeFutureProviderElement<int>
    with StationDetectionCountRef {
  _StationDetectionCountProviderElement(super.provider);

  @override
  String get stationId => (origin as StationDetectionCountProvider).stationId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
