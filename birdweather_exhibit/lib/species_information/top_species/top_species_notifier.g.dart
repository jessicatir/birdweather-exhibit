// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_species_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$topSpeciesNotifierHash() =>
    r'22830e844f1cfd352b0b885d6de43501f885d4dd';

/// See also [TopSpeciesNotifier].
@ProviderFor(TopSpeciesNotifier)
final topSpeciesNotifierProvider =
    AsyncNotifierProvider<TopSpeciesNotifier, TopSpeciesState>.internal(
  TopSpeciesNotifier.new,
  name: r'topSpeciesNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$topSpeciesNotifierHash,
  dependencies: <ProviderOrFamily>[birdWeatherServiceProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    birdWeatherServiceProvider,
    ...?birdWeatherServiceProvider.allTransitiveDependencies
  },
);

typedef _$TopSpeciesNotifier = AsyncNotifier<TopSpeciesState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
