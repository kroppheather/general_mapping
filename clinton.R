library(sf)
library(rgdal)
library(raster)
library(sp)
library(OpenStreetMap)

install.packages("OpenStreetMap")


rds <- readOGR("c:\\Users\\hkropp\\Google Drive\\GIS\\NY\\streets\\SimplifiedStreets_shp\\SimplifiedStreetSegmentQrt.shp")
plot(rds, axes=TRUE)

rds@

rds@proj4string

b <- as(extent(467469,471469,4763621,4768621),"SpatialPolygons")

rdsC <- crop(rds,b)

plot(rdsC,lwd=5)


forest <- raster("c:\\Users\\hkropp\\Google Drive\\GIS\\forest\\Forest_height_2019_NAM.tif")
forest@crs
str(forest)

plot(forest, ext=extent(-76,-74.5,42.5,43.5))
