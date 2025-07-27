// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'species_description_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$speciesDescriptionProviderHash() =>
    r'd3393b46c388ce226ab5653cee39dc46e6a8a7d5';

/// Provider for resolving which description to use for a species
///
/// This provider implements the following business logic:
/// 1. Check if the species exists in the local dataset
/// 2. If found, use the local description
/// 3. If not found, use the API description truncated to 4 sentences
///
/// Copied from [SpeciesDescriptionProvider].
@ProviderFor(SpeciesDescriptionProvider)
final speciesDescriptionProviderProvider = NotifierProvider<
    SpeciesDescriptionProvider, SpeciesDescriptionProvider>.internal(
  SpeciesDescriptionProvider.new,
  name: r'speciesDescriptionProviderProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$speciesDescriptionProviderHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SpeciesDescriptionProvider = Notifier<SpeciesDescriptionProvider>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
