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

writeOGR(rdsC,"c:\\Users\\hkropp\\Google Drive\\GIS\\NY\\streets\\clinton_street.shp","streets",driver="ESRI Shapefile")


library(sf)
library(ggplot2)
library(cartography)
library(smoothr)
cR <- st_read("c:\\Users\\hkropp\\Google Drive\\GIS\\NY\\streets\\clinton_street.shp")
cR2 <- st_simplify(cR)
plot(cR)
plot(cR)
plot(cR2)

ggplot()+
  geom_sf(data=cR)+
  theme_classic()
str(cR)

cT <- getTiles(cR, type=
              "OpenStreetMap")
tilesLayer(x=cT)
plot(cR, add=TRUE)

cRg <- smooth(cR, method="ksmooth")
ggplot()+
  geom_sf(data=cRg, size=0.5)+
  theme_classic()
