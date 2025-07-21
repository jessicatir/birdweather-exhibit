import "dart:convert";
import "package:birdweather_exhibit/models/local_species.dart";
import "package:flutter/foundation.dart";
import "package:flutter/services.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";

part "local_species_service.g.dart";

/// Service for managing local species data from the JSON file
@Riverpod(keepAlive: true)
class LocalSpeciesService extends _$LocalSpeciesService {
  static const String _assetPath =
      "assets/potential_local_species_descriptions.json";

  Map<String, LocalSpecies>? _speciesMap;
  LocalSpeciesMetadata? _metadata;
  bool _isLoaded = false;

  @override
  LocalSpeciesService build() {
    return this;
  }

  /// Load the local species data from the JSON file
  Future<void> _loadData() async {
    if (_isLoaded) return;

    try {
      debugPrint("Loading local species data from $_assetPath");

      // Load the JSON file from assets
      final String jsonString = await rootBundle.loadString(_assetPath);
      final Map<String, dynamic> jsonData = json.decode(jsonString);

      // Parse the complete data structure
      final LocalSpeciesData localSpeciesData =
          LocalSpeciesData.fromJson(jsonData);

      // Store metadata
      _metadata = localSpeciesData.metadata;

      // Create a map for O(1) lookups by species ID
      _speciesMap = <String, LocalSpecies>{};
      for (final species in localSpeciesData.species) {
        _speciesMap![species.id] = species;
      }

      _isLoaded = true;
      debugPrint("Successfully loaded ${_speciesMap!.length} local species");
    } catch (e, stackTrace) {
      debugPrint("Error loading local species data: $e");
      debugPrint("Stack trace: $stackTrace");

      // Initialize empty collections on error to prevent null issues
      _speciesMap = <String, LocalSpecies>{};
      _metadata = null;
      _isLoaded = false;

      rethrow;
    }
  }

  /// Get a species by ID from the local dataset
  /// Returns null if the species is not found in the local dataset
  Future<LocalSpecies?> getSpeciesById(String speciesId) async {
    await _loadData();
    return _speciesMap?[speciesId];
  }

  /// Check if a species exists in the local dataset
  Future<bool> hasSpecies(String speciesId) async {
    await _loadData();
    return _speciesMap?.containsKey(speciesId) ?? false;
  }

  /// Get all local species as a map (ID -> LocalSpecies)
  Future<Map<String, LocalSpecies>> getAllSpecies() async {
    await _loadData();
    return Map.unmodifiable(_speciesMap ?? <String, LocalSpecies>{});
  }

  /// Get the metadata from the local species file
  Future<LocalSpeciesMetadata?> getMetadata() async {
    await _loadData();
    return _metadata;
  }

  /// Get the total number of species in the local dataset
  Future<int> getSpeciesCount() async {
    await _loadData();
    return _speciesMap?.length ?? 0;
  }

  /// Force reload the data (useful for testing or if the file changes)
  Future<void> reload() async {
    _isLoaded = false;
    _speciesMap = null;
    _metadata = null;
    await _loadData();
  }

  /// Check if the service has been initialized and data is loaded
  bool get isLoaded => _isLoaded;
}
