// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bird_weather_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$birdWeatherServiceHash() =>
    r'49d63bbd55bb6d33137de9ff31b0aa274be6576c';

/// See also [birdWeatherService].
@ProviderFor(birdWeatherService)
final birdWeatherServiceProvider =
    AutoDisposeProvider<BirdWeatherService>.internal(
  birdWeatherService,
  name: r'birdWeatherServiceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$birdWeatherServiceHash,
  dependencies: <ProviderOrFamily>[stationConfigProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    stationConfigProvider,
    ...?stationConfigProvider.allTransitiveDependencies
  },
);

typedef BirdWeatherServiceRef = AutoDisposeProviderRef<BirdWeatherService>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
