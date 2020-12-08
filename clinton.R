library(sf)
library(rgdal)
library(raster)
library(sp)

rds <- st_read("/Users/hkropp/Google Drive/GIS/streets/ny/map/roads-line.shp", package="sf")

rds <- readOGR("/Users/hkropp/Google Drive/GIS/NY/streets/SimplifiedStreets_shp/SimplifiedStreetSegmentQrt.shp")
plot(rds)
