# settings.R — project constants

options(tigris_use_cache = TRUE)
options(tigris_class = "sf")

PROJECT <- list(
  state = "CA",
  county = "San Diego",
  year = 2013,
  survey = "acs5"
)

PATHS <- list(
  data_raw = "data/raw",
  data_interim = "data/interim",
  data_processed = "data/processed",
  outputs_tables = "outputs/tables",
  outputs_figures = "outputs/figures"
)
