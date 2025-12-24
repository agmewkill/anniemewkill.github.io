library(readr)
library(dplyr)

acs_raw <- read_csv("data/raw/acs_tract_2020.csv")

acs_clean <- acs_raw %>%
  mutate(
    GEOID = sprintf("%011s", tract),
    across(where(is.character), as.numeric)
  )

write_csv(
  acs_clean,
  "data/processed/acs_tract_2020_clean.csv"
)
