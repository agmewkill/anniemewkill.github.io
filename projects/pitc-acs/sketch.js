/**
 * PITC × ACS Correlations (San Diego County, 2013–2025)
 *
 * Loads:
 * - Simplified tract geometry (GeoJSON)
 * - Year-specific CSV tables containing PIT totals + ACS variables
 *
 * Produces:
 * - Choropleth by selected variable/year
 * - Pearson correlation (r) between PIT total and all ACS variables for the selected year
 *
 * Notes:
 * - Designed for readability and reusability (config-driven years/variables)
 * - Handles missing values and varying column headers across CSV vintages
 */
