// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'station_activity_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$stationDetectionCountHash() =>
    r'897184ec9676819638f2ceff2a86e98e9d10773e';

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
/// showing. This is a lightweight, station-agnostic check that runs outside the
/// per-station display scopes. Returns 0 on any error so a struggling station is
/// treated as "not enough data" rather than breaking the rotation.
///
/// Copied from [stationDetectionCount].
@ProviderFor(stationDetectionCount)
const stationDetectionCountProvider = StationDetectionCountFamily();

/// Total detections for [stationId] over the last 24 hours.
///
/// Used to decide whether a station currently has enough data to be worth
/// showing. This is a lightweight, station-agnostic check that runs outside the
/// per-station display scopes. Returns 0 on any error so a struggling station is
/// treated as "not enough data" rather than breaking the rotation.
///
/// Copied from [stationDetectionCount].
class StationDetectionCountFamily extends Family<AsyncValue<int>> {
  /// Total detections for [stationId] over the last 24 hours.
  ///
  /// Used to decide whether a station currently has enough data to be worth
  /// showing. This is a lightweight, station-agnostic check that runs outside the
  /// per-station display scopes. Returns 0 on any error so a struggling station is
  /// treated as "not enough data" rather than breaking the rotation.
  ///
  /// Copied from [stationDetectionCount].
  const StationDetectionCountFamily();

  /// Total detections for [stationId] over the last 24 hours.
  ///
  /// Used to decide whether a station currently has enough data to be worth
  /// showing. This is a lightweight, station-agnostic check that runs outside the
  /// per-station display scopes. Returns 0 on any error so a struggling station is
  /// treated as "not enough data" rather than breaking the rotation.
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
/// showing. This is a lightweight, station-agnostic check that runs outside the
/// per-station display scopes. Returns 0 on any error so a struggling station is
/// treated as "not enough data" rather than breaking the rotation.
///
/// Copied from [stationDetectionCount].
class StationDetectionCountProvider extends AutoDisposeFutureProvider<int> {
  /// Total detections for [stationId] over the last 24 hours.
  ///
  /// Used to decide whether a station currently has enough data to be worth
  /// showing. This is a lightweight, station-agnostic check that runs outside the
  /// per-station display scopes. Returns 0 on any error so a struggling station is
  /// treated as "not enough data" rather than breaking the rotation.
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
