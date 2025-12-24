library(sf)
library(dplyr)

pitc_raw <- st_read("data/raw/pitc_tract_2020.geojson")

pitc_clean <- pitc_raw %>%
  st_make_valid() %>%
  mutate(
    GEOID = as.character(GEOID),
    pit_total = as.numeric(PIT_TOTAL)
  ) %>%
  select(GEOID, pit_total, geometry)

st_write(
  pitc_clean,
  "data/processed/pitc_tract_2020_clean.gpkg",
  delete_dsn = TRUE
)
