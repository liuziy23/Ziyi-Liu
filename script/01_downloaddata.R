#### Preamble ####
# Purpose: Toronto body safe
# Author: Ziyi Liu
# Email: jacqueline.liu@mail.utoronto.ca
# Date: 23 January 2024
# Prerequisites: -

#### Workspace setup ####0
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
packages <- list_packages(limit = 50)
packages

#### Acquire ####
toronto_bodysafe <-
  list_package_resources("c4052ff7-a09d-4eaf-84e6-6669519f413d") |>
  # Within that package, we are interested in the 2021 dataset
  filter(name == 
           "bodysafe li- 4326.csv") |>
  # Having reduced the dataset to one row we can get the resource
  get_resource()

write_csv(
  x = toronto_bodysafe,
  file = "toronto_bodysafe.csv"
)

head(toronto_bodysafe)
