library(tidyverse)

# === 1. Read the original CSV ===
# Replace 'input.csv' with your file path
df <- read_delim(
  "./Downloads/834631_fuelings.csv",
  delim = ";",
  locale = locale(decimal_mark = ",", grouping_mark = ""),
  trim_ws = TRUE,
  show_col_types = FALSE
)

# === 2. Clean and transform columns ===
converted <- df %>%
  transmute(
    Date = str_replace_all(Date, "\\.", ". "),  # Add spaces for readability
    Odometer = Odometer,
    FuelConsumed = str_replace(format(Quantity, decimal.mark = ","), "\\.", ","),
    Cost = paste0(format(`Total price`, decimal.mark = ","), " €"),
    FuelEconomy = ifelse(!is.na(Consumption), format(Consumption, decimal.mark = ","), ""),
    IsFillToFull = ifelse(Type == 1, TRUE, FALSE),
    MissedFuelUp = ifelse(Type == 2, TRUE, FALSE),
    Notes = ifelse(Note == '""', "", Note),
    Tags = paste(Country, Fuel)
  )

# === 3. Save the new CSV ===
write_csv(
  converted,
  "./Downloads/output.csv",
  na = "",
  escape = "none"
)
