library(readr)
library(dplyr)
library(lubridate)

# Read the dataset
toronto_housing_data <- read_csv("toronto_housing.csv")

# Clean the data
toronto_housing_data_cleaned <- toronto_housing_data %>%
  select(-civic_issues) %>%
  mutate(last_refreshed = ymd(last_refreshed))

# View the cleaned data
head(toronto_housing_data_cleaned)

write_csv(
  x = toronto_housing_data_cleaned,
  file = "cleaned_toronto_housing.csv"
)

