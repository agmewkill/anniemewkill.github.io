library(dplyr)

acs <- read_csv("data/processed/acs_tract_2020_clean.csv")

acs_rates <- acs %>%
  mutate(
    pct_below_poverty = BelowPover / PopPivertyDetermined,
    pct_unemployed = Unemployed / TotalPop,
    pct_hispanic = TotalHisp / TotalPop,
    median_income = ifelse(MedianInco < 0, NA, MedianInco)
  )

write_csv(
  acs_rates,
  "data/processed/acs_tract_2020_clean.csv"
)
