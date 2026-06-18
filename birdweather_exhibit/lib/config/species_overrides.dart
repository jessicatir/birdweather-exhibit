import "package:birdweather_exhibit/graphql/topBirdWeatherSpecies.graphql.dart";

/// A rename/merge rule for BirdWeather species.
///
/// Any API species whose common name is listed in [sourceCommonNames] is
/// displayed as [displayCommonName] (and the other `display*` fields when set).
/// When several source species share one display name they are treated as a
/// single species: their Top Detections counts are summed and they collapse to
/// one recent-detection card.
///
/// To rename or merge more species, add entries to [speciesOverrides].
class SpeciesOverride {
  const SpeciesOverride({
    required this.sourceCommonNames,
    required this.displayCommonName,
    this.displayScientificName,
    this.displayDescription,
    this.displayImageUrl,
    this.displayThumbnailUrl,
  });

  /// API common names that should be treated as [displayCommonName].
  final List<String> sourceCommonNames;
  final String displayCommonName;
  final String? displayScientificName;

  /// A description for the merged species. When set it replaces the per-species
  /// description so the merged card reads consistently regardless of which
  /// source species was detected.
  final String? displayDescription;

  /// A photo for the merged species (full image and thumbnail). When set it
  /// replaces the per-species photos.
  final String? displayImageUrl;
  final String? displayThumbnailUrl;
}

/// The list of species name exceptions. Edit this to rename or merge species.
const List<SpeciesOverride> speciesOverrides = [
  // The Cordilleran and Pacific-slope Flycatchers were re-lumped into a single
  // species, the Western Flycatcher. Show them as one bird with a combined
  // detection count, a single description, and one pinned photo so the Top
  // Detections and recent-detection cards always show the same image.
  SpeciesOverride(
    sourceCommonNames: ["Cordilleran Flycatcher", "Pacific-slope Flycatcher"],
    displayCommonName: "Western Flycatcher",
    displayScientificName: "Empidonax difficilis",
    displayDescription:
        "The Western Flycatcher is a small olive-and-yellow flycatcher of "
        "western forests, named for the way it darts out from a perch to snap "
        "up flying insects. Until recently it was split into two species: the "
        "coastal Pacific-slope and the inland Cordilleran Flycatcher. In 2023, "
        "ornithologists merged them back into a single species, the Western "
        "Flycatcher — a reminder that scientific understanding keeps "
        "evolving. It favors shaded forests near flowing water, especially "
        "canyons and ravines where breaks in the canopy create insect-rich "
        "hunting grounds. Like other Empidonax flycatchers, it is far easier "
        "to recognize by its sharp call than by sight, and males sing "
        "persistently through the early weeks of nesting season.\n\n"
        "(Cornell Lab of Ornithology All About Birds)",
    // Pinned so both columns match (otherwise each picks its own subspecies
    // photo — Top Detections by count, recent detections by recency). Swap to a
    // Pacific-slope image here if preferred.
    displayImageUrl:
        "https://media.birdweather.com/species/1787/CordilleranFlycatcher-standard-a12e29a7b443451f9ecaab1360386ead.jpg",
    displayThumbnailUrl:
        "https://media.birdweather.com/species/1787/CordilleranFlycatcher-thumbnail-af713c20c740779eda295b294cee0ba6.jpg",
  ),
];

SpeciesOverride? _overrideForCommonName(String? commonName) {
  if (commonName == null) return null;
  for (final override in speciesOverrides) {
    if (override.sourceCommonNames.contains(commonName)) return override;
  }
  return null;
}

/// The common name to display for an API species (unchanged if no override).
String displayCommonName(String apiCommonName) =>
    _overrideForCommonName(apiCommonName)?.displayCommonName ?? apiCommonName;

/// The scientific name to display: the override's value when provided,
/// otherwise the API value.
String? displayScientificName(
        String apiCommonName, String? apiScientificName) =>
    _overrideForCommonName(apiCommonName)?.displayScientificName ??
    apiScientificName;

/// The description to display: the override's value when provided, otherwise
/// [fallbackDescription] (typically the per-species resolved description).
String displayDescription(String apiCommonName, String fallbackDescription) =>
    _overrideForCommonName(apiCommonName)?.displayDescription ??
    fallbackDescription;

/// The image URL to display: the override's value when provided, otherwise the
/// API value.
String? displayImageUrl(String apiCommonName, String? apiImageUrl) =>
    _overrideForCommonName(apiCommonName)?.displayImageUrl ?? apiImageUrl;

/// The thumbnail URL to display: the override's value when provided, otherwise
/// the API value.
String? displayThumbnailUrl(String apiCommonName, String? apiThumbnailUrl) =>
    _overrideForCommonName(apiCommonName)?.displayThumbnailUrl ??
    apiThumbnailUrl;

/// A key that is identical for every API species merged into one display
/// species — use it to de-duplicate/group detections. Falls back to
/// [fallbackKey] (e.g. the species id) when there is no override.
String canonicalSpeciesKey(String? apiCommonName, String fallbackKey) =>
    _overrideForCommonName(apiCommonName)?.displayCommonName ?? fallbackKey;

/// Applies [speciesOverrides] to a Top Detections result: renames overridden
/// species and merges those that share a display name, summing their counts.
/// The resulting list is re-sorted by count (descending).
Query$TopBirdWeatherSpecies applyOverridesToTopSpecies(
    Query$TopBirdWeatherSpecies data) {
  final merged = <String, Query$TopBirdWeatherSpecies$species>{};

  for (final entry in data.species) {
    final key = canonicalSpeciesKey(entry.species?.commonName, entry.speciesId);
    final existing = merged[key];
    if (existing == null) {
      merged[key] = _renameEntry(entry);
    } else {
      merged[key] = existing.copyWith(count: existing.count + entry.count);
    }
  }

  final mergedList = merged.values.toList()
    ..sort((a, b) => b.count.compareTo(a.count));

  return data.copyWith(species: mergedList);
}

/// Returns [entry] with its species renamed/re-photographed per any override.
Query$TopBirdWeatherSpecies$species _renameEntry(
    Query$TopBirdWeatherSpecies$species entry) {
  final species = entry.species;
  final override = _overrideForCommonName(species?.commonName);
  if (species == null || override == null) return entry;

  return entry.copyWith(
    species: species.copyWith(
      commonName: override.displayCommonName,
      scientificName: override.displayScientificName ?? species.scientificName,
      thumbnailUrl: override.displayThumbnailUrl ?? species.thumbnailUrl,
      imageUrl: override.displayImageUrl ?? species.imageUrl,
    ),
  );
}
