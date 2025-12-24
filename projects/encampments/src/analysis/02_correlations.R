library(dplyr)
library(psych)

df <- read_csv("data/outputs/tract_acs_pitc_2020.csv")

vars <- df %>%
  select(
    pit_total,
    pct_below_poverty,
    pct_unemployed,
    pct_hispanic,
    median_income
  ) %>%
  na.omit()

corr <- corr.test(vars, method = "pearson")

write_csv(
  as.data.frame(corr$r),
  "data/outputs/correlations_2020.csv"
)

