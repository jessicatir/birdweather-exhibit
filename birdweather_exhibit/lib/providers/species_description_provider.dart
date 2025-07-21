import "package:birdweather_exhibit/services/local_species_service.dart";
import "package:birdweather_exhibit/utils/description_truncation.dart";
import "package:flutter/foundation.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";

part "species_description_provider.g.dart";

/// Provider for resolving which description to use for a species
///
/// This provider implements the following business logic:
/// 1. Check if the species exists in the local dataset
/// 2. If found, use the local description
/// 3. If not found, use the API description truncated to 4 sentences
@Riverpod(keepAlive: true)
class SpeciesDescriptionProvider extends _$SpeciesDescriptionProvider {
  @override
  SpeciesDescriptionProvider build() {
    return this;
  }

  /// Resolves the description for a species based on the configured logic
  ///
  /// [speciesId] - The ID of the species to resolve the description for
  /// [apiDescription] - The description from the API (typically wikipediaSummary)
  ///
  /// Returns the resolved description string
  Future<String> resolveDescription(
      String speciesId, String? apiDescription) async {
    try {
      // Get the local species service
      final localSpeciesService = ref.read(localSpeciesServiceProvider);

      // Check if the species exists in the local dataset
      final localSpecies = await localSpeciesService.getSpeciesById(speciesId);

      if (localSpecies != null) {
        debugPrint(
            "Using local description for species $speciesId (${localSpecies.commonName})");
        return localSpecies.description;
      }

      // Species not found in local dataset, use truncated API description
      final fallbackDescription = apiDescription ?? "";

      if (fallbackDescription.isEmpty) {
        debugPrint("No description available for species $speciesId");
        return "";
      }

      final truncatedDescription = DescriptionTruncation.truncateToSentences(
        fallbackDescription,
        maxSentences: 4,
      );

      debugPrint(
          "Using truncated API description for species $speciesId (${truncatedDescription.length} chars)");
      return truncatedDescription;
    } catch (e, stackTrace) {
      debugPrint("Error resolving description for species $speciesId: $e");
      debugPrint("Stack trace: $stackTrace");

      // Fallback to truncated API description on error
      final fallbackDescription = apiDescription ?? "";
      if (fallbackDescription.isNotEmpty) {
        return DescriptionTruncation.truncateToSentences(
          fallbackDescription,
          maxSentences: 4,
        );
      }

      return "";
    }
  }

  /// Batch resolve descriptions for multiple species
  ///
  /// [speciesData] - Map of species ID to API description
  ///
  /// Returns a map of species ID to resolved description
  Future<Map<String, String>> resolveDescriptions(
      Map<String, String?> speciesData) async {
    final resolvedDescriptions = <String, String>{};

    for (final entry in speciesData.entries) {
      final speciesId = entry.key;
      final apiDescription = entry.value;

      resolvedDescriptions[speciesId] =
          await resolveDescription(speciesId, apiDescription);
    }

    return resolvedDescriptions;
  }

  /// Check if a species has a local description available
  ///
  /// [speciesId] - The ID of the species to check
  ///
  /// Returns true if the species has a local description, false otherwise
  Future<bool> hasLocalDescription(String speciesId) async {
    try {
      final localSpeciesService = ref.read(localSpeciesServiceProvider);
      return await localSpeciesService.hasSpecies(speciesId);
    } catch (e) {
      debugPrint("Error checking local description for species $speciesId: $e");
      return false;
    }
  }

  /// Get statistics about description resolution
  ///
  /// Returns a map with statistics about local vs API descriptions
  Future<Map<String, dynamic>> getResolutionStats() async {
    try {
      final localSpeciesService = ref.read(localSpeciesServiceProvider);
      final totalLocalSpecies = await localSpeciesService.getSpeciesCount();
      final metadata = await localSpeciesService.getMetadata();

      return {
        "totalLocalSpecies": totalLocalSpecies,
        "localDatasetRegion": metadata?.region ?? "Unknown",
        "isLocalDataLoaded": localSpeciesService.isLoaded,
      };
    } catch (e) {
      debugPrint("Error getting resolution stats: $e");
      return {
        "totalLocalSpecies": 0,
        "localDatasetRegion": "Error loading",
        "isLocalDataLoaded": false,
      };
    }
  }
}
