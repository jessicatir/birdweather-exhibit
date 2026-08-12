// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'live_detection_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$liveDetectionNotifierHash() =>
    r'e86364f8b99798da6963d0d30aaa66f2a59ef9fd';

/// See also [LiveDetectionNotifier].
@ProviderFor(LiveDetectionNotifier)
final liveDetectionNotifierProvider =
    AsyncNotifierProvider<LiveDetectionNotifier, LiveDetectionState>.internal(
  LiveDetectionNotifier.new,
  name: r'liveDetectionNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$liveDetectionNotifierHash,
  dependencies: <ProviderOrFamily>[birdWeatherServiceProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    birdWeatherServiceProvider,
    ...?birdWeatherServiceProvider.allTransitiveDependencies
  },
);

typedef _$LiveDetectionNotifier = AsyncNotifier<LiveDetectionState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
