import "package:freezed_annotation/freezed_annotation.dart";

part "local_species.freezed.dart";

/// Represents a species from the local species descriptions JSON file
@freezed
class LocalSpecies with _$LocalSpecies {
  const factory LocalSpecies({
    required String id,
    required String commonName,
    required String scientificName,
    required String description,
    required List<String> sources,
  }) = _LocalSpecies;

  factory LocalSpecies.fromJson(Map<String, dynamic> json) {
    return LocalSpecies(
      id: json["id"] as String,
      commonName: json["commonName"] as String,
      scientificName: json["scientificName"] as String,
      description: json["description"] as String,
      sources: (json["sources"] as List<dynamic>? ?? []).cast<String>(),
    );
  }
}

/// Represents the metadata from the local species descriptions JSON file
@freezed
class LocalSpeciesMetadata with _$LocalSpeciesMetadata {
  const factory LocalSpeciesMetadata({
    required String title,
    required String description,
    required String region,
    required LocalSpeciesLocation centerLocation,
    required int totalSpecies,
    required List<String> fields,
  }) = _LocalSpeciesMetadata;

  factory LocalSpeciesMetadata.fromJson(Map<String, dynamic> json) {
    return LocalSpeciesMetadata(
      title: json["title"] as String,
      description: json["description"] as String,
      region: json["region"] as String,
      centerLocation: LocalSpeciesLocation.fromJson(
          json["centerLocation"] as Map<String, dynamic>),
      totalSpecies: json["totalSpecies"] as int,
      fields: (json["fields"] as List<dynamic>? ?? []).cast<String>(),
    );
  }
}

/// Represents the center location from the metadata
@freezed
class LocalSpeciesLocation with _$LocalSpeciesLocation {
  const factory LocalSpeciesLocation({
    required String city,
    required LocalSpeciesCoordinates coordinates,
  }) = _LocalSpeciesLocation;

  factory LocalSpeciesLocation.fromJson(Map<String, dynamic> json) {
    return LocalSpeciesLocation(
      city: json["city"] as String,
      coordinates: LocalSpeciesCoordinates.fromJson(
          json["coordinates"] as Map<String, dynamic>),
    );
  }
}

/// Represents coordinates from the metadata
@freezed
class LocalSpeciesCoordinates with _$LocalSpeciesCoordinates {
  const factory LocalSpeciesCoordinates({
    required double lat,
    required double lon,
  }) = _LocalSpeciesCoordinates;

  factory LocalSpeciesCoordinates.fromJson(Map<String, dynamic> json) {
    return LocalSpeciesCoordinates(
      lat: (json["lat"] as num).toDouble(),
      lon: (json["lon"] as num).toDouble(),
    );
  }
}

/// Represents the complete local species data file structure
@freezed
class LocalSpeciesData with _$LocalSpeciesData {
  const factory LocalSpeciesData({
    required LocalSpeciesMetadata metadata,
    required List<LocalSpecies> species,
  }) = _LocalSpeciesData;

  factory LocalSpeciesData.fromJson(Map<String, dynamic> json) {
    return LocalSpeciesData(
      metadata: LocalSpeciesMetadata.fromJson(
          json["metadata"] as Map<String, dynamic>),
      species: (json["species"] as List<dynamic>? ?? [])
          .where((e) => e != null)
          .map((e) => LocalSpecies.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }
}
