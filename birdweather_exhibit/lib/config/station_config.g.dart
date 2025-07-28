// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'station_config.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$stationConfigHash() => r'be318d248c675aa801019c929b84b355e9073448';

/// Provider for the station configuration
///
/// This provider MUST be overridden with a specific station configuration.
/// Override this provider in your main.dart:
/// ```dart
/// ProviderContainer(
///   overrides: [
///     stationConfigProvider.overrideWithValue(
///       StationConfig.custom(
///         stationId: "1234",
///         locationName: "My Custom Location",
///       ),
///     ),
///   ],
/// )
/// ```
///
/// Copied from [stationConfig].
@ProviderFor(stationConfig)
final stationConfigProvider = Provider<StationConfig>.internal(
  stationConfig,
  name: r'stationConfigProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$stationConfigHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef StationConfigRef = ProviderRef<StationConfig>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
