library(AER)

df <- read_csv("data/outputs/tract_acs_pitc_2020.csv")

model <- tobit(
  pit_total ~ pct_below_poverty + pct_unemployed + pct_hispanic + median_income,
  left = 0,
  data = df
)

coef_df <- as.data.frame(summary(model)$coefficients)

write_csv(
  coef_df,
  "data/outputs/model_coefficients_2020.csv"
)

