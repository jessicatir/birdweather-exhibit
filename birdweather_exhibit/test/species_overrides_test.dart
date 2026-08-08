import "package:birdweather_exhibit/config/species_overrides.dart";
import "package:birdweather_exhibit/graphql/topBirdWeatherSpecies.graphql.dart";
import "package:flutter_test/flutter_test.dart";

/// Builds a dummy Top Detections entry.
Query$TopBirdWeatherSpecies$species _entry({
  required String id,
  required String commonName,
  required int count,
  String? scientificName,
}) {
  return Query$TopBirdWeatherSpecies$species(
    speciesId: id,
    count: count,
    species: Query$TopBirdWeatherSpecies$species$species(
      id: id,
      commonName: commonName,
      scientificName: scientificName,
      color: "#000000",
    ),
  );
}

Query$TopBirdWeatherSpecies _topSpecies(
        List<Query$TopBirdWeatherSpecies$species> entries) =>
    Query$TopBirdWeatherSpecies(species: entries);

void main() {
  group("applyOverridesToTopSpecies", () {
    test("merges both flycatchers into Western Flycatcher with summed counts",
        () {
      final data = _topSpecies([
        _entry(
            id: "565",
            commonName: "Black-billed Magpie",
            scientificName: "Pica hudsonia",
            count: 40),
        _entry(
            id: "1787",
            commonName: "Cordilleran Flycatcher",
            scientificName: "Empidonax occidentalis",
            count: 118),
        _entry(
            id: "1780",
            commonName: "Pacific-slope Flycatcher",
            scientificName: "Empidonax difficilis",
            count: 30),
      ]);

      final result = applyOverridesToTopSpecies(data);

      // Two flycatchers collapse into one entry; magpie untouched => 2 entries.
      expect(result.species.length, 2);

      final western = result.species
          .firstWhere((e) => e.species?.commonName == "Western Flycatcher");
      expect(western.count, 118 + 30);
      expect(western.species?.scientificName, "Empidonax difficilis");

      // No source flycatcher names remain.
      final names = result.species.map((e) => e.species?.commonName).toList();
      expect(names, isNot(contains("Cordilleran Flycatcher")));
      expect(names, isNot(contains("Pacific-slope Flycatcher")));

      // Re-sorted by count descending: Western (148) ranks above Magpie (40).
      expect(result.species.first.species?.commonName, "Western Flycatcher");
      expect(result.species.first.count, 148);
    });

    test("renames a single present source species (no partner to sum)", () {
      final result = applyOverridesToTopSpecies(_topSpecies([
        _entry(id: "1787", commonName: "Cordilleran Flycatcher", count: 118),
      ]));

      expect(result.species.length, 1);
      expect(result.species.first.species?.commonName, "Western Flycatcher");
      expect(result.species.first.count, 118);
    });

    test("leaves non-overridden species unchanged", () {
      final result = applyOverridesToTopSpecies(_topSpecies([
        _entry(
            id: "2374",
            commonName: "Lazuli Bunting",
            scientificName: "Passerina amoena",
            count: 75),
      ]));

      expect(result.species.length, 1);
      expect(result.species.first.species?.commonName, "Lazuli Bunting");
      expect(result.species.first.species?.scientificName, "Passerina amoena");
      expect(result.species.first.count, 75);
    });
  });

  group("override helpers", () {
    test("displayCommonName maps both flycatchers, passes others through", () {
      expect(displayCommonName("Cordilleran Flycatcher"), "Western Flycatcher");
      expect(
          displayCommonName("Pacific-slope Flycatcher"), "Western Flycatcher");
      expect(displayCommonName("American Robin"), "American Robin");
    });

    test("displayScientificName prefers the override, else the API value", () {
      expect(
          displayScientificName(
              "Cordilleran Flycatcher", "Empidonax occidentalis"),
          "Empidonax difficilis");
      expect(displayScientificName("American Robin", "Turdus migratorius"),
          "Turdus migratorius");
    });

    test("canonicalSpeciesKey groups merged species, falls back otherwise", () {
      expect(canonicalSpeciesKey("Cordilleran Flycatcher", "1787"),
          canonicalSpeciesKey("Pacific-slope Flycatcher", "1780"));
      expect(canonicalSpeciesKey("American Robin", "123"), "123");
    });
  });
}
