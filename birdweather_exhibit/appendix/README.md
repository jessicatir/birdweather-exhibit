# Appendix - Species Data Collection

This directory contains the GraphQL queries, generated files, and data collected during the species data gathering phase of the project.

## Directory Structure

### `/graphql/`
Contains GraphQL query files and their generated Dart code used during data collection:
- `northAmericanSpecies.graphql*` - Query for North American species using geographic bounding box
- `usSpeciesDetections.graphql*` - Query for US species using country filter (experimental)
- `allSpeciesSearch.graphql*` - Query for global species search

### `/data/`
Contains the collected species datasets in JSON format:
- `north_american_species.json` - 856 North American species (30-day period)
- `comprehensive_north_american_species.json` - 1,179 North American species (6-month period)
- `united_states_species.json` - 504 filtered US species (keyword-based filtering)
- `all_species_catalog.json` - 1,000 global species (alphabetical search)
- `local_species.json` - 448 local species around Pullman, Washington
- `continental_us_species.json` - Continental US species (if generated)

## Dataset Summary

| Dataset | Species Count | Region | Time Period | Method |
|---------|---------------|--------|-------------|---------|
| North American | 856 | North America | 30 days | Geographic bounding box |
| Comprehensive NA | 1,179 | North America | 6 months | Multi-period fetch |
| United States | 504 | United States | Filtered | Keyword filtering |
| Global Catalog | 1,000 | Global | All time | Search-based |
| Local (Pullman, WA) | 448 | Western US | 1 year | Geographic bounding box |

## Key Findings

1. **Best Method**: 6-month time period with geographic bounding box yielded the most comprehensive results (1,179 species)
2. **API Limitations**: BirdWeather API only includes species detected by their acoustic monitoring network
3. **Regional Coverage**: ~38% of North American species are found in the western US region
4. **Data Quality**: All datasets include complete metadata (IDs, names, images, links, descriptions)

## Usage

These datasets provide the foundation for implementing local species descriptions. The species IDs can be used to:
- Create local description storage
- Build species lookup systems
- Implement regional filtering
- Develop species management interfaces

## Next Steps

The main project continues with implementing the local species description system using these collected datasets.
