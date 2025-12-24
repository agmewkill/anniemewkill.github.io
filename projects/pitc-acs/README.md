# PITC × ACS Correlations (San Diego County, 2013–2025)

Interactive p5.js map to explore tract-level PIT count totals and Pearson correlation (r) with ACS demographic and socioeconomic indicators across multiple years.

## What this demonstrates
- Config-driven multi-year ingestion (year → CSV mapping)
- Schema/column normalization for messy inputs (candidate header matching)
- Joining tract geometry (GeoJSON) with tabular values
- Handling missing values + low sample size safeguards
- Reproducible, internal-tool style UI (hover details, legend, correlation panel)

## Data
- `sd_tracts_simplified.json` — simplified census tract boundaries
- `SD_ACS_CT_YYYY_PITC.csv` — PIT totals + ACS variables by tract (selected years)

## Run locally
Open a local web server in this folder (required for p5 file loading):

```bash
python -m http.server 8000
