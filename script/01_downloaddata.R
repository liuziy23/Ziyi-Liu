#### Preamble ####
# Purpose: Active Affordable and Social Housing Units
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
toronto_housing <- search_packages("housing")
toronto_housing
housing1 <- list_package_resources("active-affordable-and-social-housing-units")
housing1

housing_file <- housing1 %>% 
  filter(name == "Social and Affordable Housing.csv") 

View(housing_file)
housing_data <- get_resource(housing_file)

write_csv(
  x = toronto_housing,
  file = "toronto_housing.csv"
)

head(toronto_housing)
                                                                                            
