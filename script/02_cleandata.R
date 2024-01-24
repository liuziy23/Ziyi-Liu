library(readr)
library(dplyr)
library(lubridate)
library(tidyr)

# Read the data
data <- read.csv("toronto_bodysafe.csv")

data_cleaned <- data %>% distinct()

data_cleaned <- na.omit(data_cleaned)

data_cleaned$insDate <- as.Date(data_cleaned$insDate)

write.csv(data_cleaned, "toronto_bodysafe_cleaned.csv", row.names = FALSE)

