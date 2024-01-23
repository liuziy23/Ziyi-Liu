#### Preamble ####
# Purpose: covid19 cases
# Author: Ziyi Liu
# Email: jacqueline.liu@mail.utoronto.ca
# Date: 23 January 2024
# Prerequisites: -

#### Workspace setup ####
install.packages("opendatatoronto")
install.packages("knitr")
install.packages("janitor")
install.packages("lubridate")
install.packages("tidyverse")

library(knitr)
library(janitor)
library(lubridate)
library(opendatatoronto)
library(tidyverse)
packages <- list_packages(limit = 10)
packages


#### Acquire ####
toronto_covid <- search_packages("covid")
toronto_covid
covid1 <- list_package_resources("64b54586-6180-4485-83eb-81e8fae3b8fe")
  
covid_file <- covid1 %>% 
  filter(name == "COVID19 cases.csv") 
  
View(covid_file)
covid_data <- get_resource(covid_file)

write_csv(
  x = toronto_covid,
  file = "toronto_covid.csv"
)

head(toronto_covid)
