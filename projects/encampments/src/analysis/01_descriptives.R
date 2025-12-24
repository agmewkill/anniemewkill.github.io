library(dplyr)
library(readr)
library(sf)
library(summarytools)  # optional but nice

df <- read_csv("data/outputs/tract_acs_pitc_2020.csv")
pit_summary <- df %>%
  summarise(
    n_tracts = n(),
    min_pit = min(pit_total, na.rm = TRUE),
    max_pit = max(pit_total, na.rm = TRUE),
    mean_pit = mean(pit_total, na.rm = TRUE),
    median_pit = median(pit_total, na.rm = TRUE),
    pct_zero = mean(pit_total == 0, na.rm = TRUE)
  )

write_csv(pit_summary, "data/outputs/pitc_summary_2020.csv")
top_tracts <- df %>%
  arrange(desc(pit_total)) %>%
  select(GEOID, NAME, pit_total) %>%
  slice(1:20)

write_csv(
  top_tracts,
  "data/outputs/top_tracts_by_pitc_2020.csv"
)
acs_summary <- df %>%
  summarise(
    median_income_min = min(median_income, na.rm = TRUE),
    median_income_max = max(median_income, na.rm = TRUE),
    poverty_rate_mean = mean(pct_below_poverty, na.rm = TRUE),
    unemployment_rate_mean = mean(pct_unemployed, na.rm = TRUE),
    foreign_born_mean = mean(BornForeig / TotalPop, na.rm = TRUE)
  )

write_csv(
  acs_summary,
  "data/outputs/acs_summary_2020.csv"
)
missing_report <- df %>%
  summarise(across(
    c(
      pit_total,
      pct_below_poverty,
      pct_unemployed,
      median_income
    ),
    ~ sum(is.na(.))
  ))

write_csv(
  missing_report,
  "data/outputs/missing_values_2020.csv"
)
summary_text <- tibble(
  note = c(
    paste("Zero PIT tracts:", round(pit_summary$pct_zero * 100, 1), "%"),
    paste("Median PIT count:", pit_summary$median_pit),
    paste("Max PIT count:", pit_summary$max_pit)
  )
)

write_csv(
  summary_text,
  "data/outputs/descriptives_notes_2020.csv"
)

