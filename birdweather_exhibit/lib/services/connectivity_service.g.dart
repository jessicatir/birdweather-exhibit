// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'connectivity_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$connectivityServiceHash() =>
    r'2514faa3d7f3227d473e300af7d0188339855ef3';

/// See also [connectivityService].
@ProviderFor(connectivityService)
final connectivityServiceProvider =
    AutoDisposeProvider<ConnectivityService>.internal(
  connectivityService,
  name: r'connectivityServiceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$connectivityServiceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ConnectivityServiceRef = AutoDisposeProviderRef<ConnectivityService>;
String _$networkConnectivityHash() =>
    r'58d1a61f329b52aa502187710b7f820d85903a7a';

/// See also [networkConnectivity].
@ProviderFor(networkConnectivity)
final networkConnectivityProvider = AutoDisposeStreamProvider<bool>.internal(
  networkConnectivity,
  name: r'networkConnectivityProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$networkConnectivityHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef NetworkConnectivityRef = AutoDisposeStreamProviderRef<bool>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
