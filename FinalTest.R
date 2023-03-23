data <- read.csv("C:/Users/Jeffh/Downloads/Harbour_seal_counts_haulout_locs_BCcoast.csv")

install.packages(mapview)
library(mapview)

mapview(data, xcol = "Longitude", ycol = "Latitude", crs = 4269, grid = FALSE)
 
library(sf)

data.sf <- st_as_sf(data, coords = c("Longitude", "Latitude"),  crs = 4326)

library(ggplot2)

ps1 <- ggplot(data = data, aes (x = Longitude, y = Latitude, color = complex_count)) + geom_point(alpha = 0.5) + scale_color_distiller(palette = "OrRd",direction = 1) +
  coord_equal() 

ps1

data2 <- read.csv("C:/Users/Jeffh/Downloads/bcseasurfacetemptrends1935-2014.csv")

mapview(data2, xcol = "Longitude", ycol = "Latitude", crs = 4269, grid = FALSE)
