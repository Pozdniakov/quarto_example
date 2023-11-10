library(tidyverse)
library(tidygeocoder)
library(leaflet)


cities <- read_csv("data/2023_autumn_survey.csv") %>%
  select(addr = `Из какого вы города?`)
geocoded <- cities %>%
  geocode(addr, method = 'osm', lat = latitude , long = longitude)

write_csv(geocoded, "data/geocoded.csv")


