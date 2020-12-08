library(sf)
library(rgdal)
library(raster)
library(sp)
rds <- st_read("/Users/hkropp/Google Drive/GIS/streets/ny/map/roads-line.shp", package="sf")

rds <- readOGR("/Users/hkropp/Google Drive/GIS/streets/ny/map/roads-line.shp")
plot(rds)

#most of NY
r1 <- readOGR("/Users/hkropp/Google Drive/GIS/NY/streets/Shape/Trans_RoadSegment.shp")

r2 <- readOGR("/Users/hkropp/Google Drive/GIS/NY/streets/Shape/Trans_RoadSegment2.shp")
#
r3 <- readOGR("/Users/hkropp/Google Drive/GIS/NY/streets/Shape/Trans_RoadSegment3.shp")
r4 <- readOGR("/Users/hkropp/Google Drive/GIS/NY/streets/Shape/Trans_RoadSegment4.shp")
r5 <- readOGR("/Users/hkropp/Google Drive/GIS/NY/streets/Shape/Trans_RoadSegment5.shp")

plot(r1)
r1@proj4string
r1C <- crop(r1,extent(-75.4,-75.2,42.9,43.1))
r2C <- raster::crop(r2,extent(-75.4,-75.2,42.9,43.1))
plot(r1C)
plot(r2,  col="tomato3", ext=extent(-75.4,-75.2,42.9,43.1))
