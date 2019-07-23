# make sure you have the necessary packages installed and loaded
install.packages(c("tidyverse", "raster", "rgdal", "rasterVis", "sf"))
library(tidyverse)
library(raster)
library(rgdal)
library(rasterVis)
library(sf)


# make sure you have the data downloaded and unzipped
download.file(url = "https://ndownloader.figshare.com/articles/2009586/versions/10",
              destfile = "data/2009586.zip")
unzip("data/2009586.zip",
      exdir = "data/")
unzip("data/NEON-DS-Airborne-Remote-Sensing.zip",
      exdir = "data/")
unzip("data/NEON-DS-Landsat-NDVI.zip",
      exdir = "data/")
unzip("data/NEON-DS-Met-Time-Series.zip",
      exdir = "data/")
unzip("data/NEON-DS-Site-Layout-Files.zip",
      exdir = "data/")

# Open and plot shapefiles in R


#################################################
## Challenge: Import Line and Point Shapefiles ##
#################################################
# Using the steps above, import the HARV_roads and HARVtower_UTM18N layers into 
# R. Call the HARV_roads object lines_HARV and the HARVtower_UTM18N point_HARV.

lines_HARV <- st_read("data/NEON-DS-Site-Layout-Files/HARV/HARV_roads.shp")
point_HARV <- st_read("data/NEON-DS-Site-Layout-Files/HARV/HARVtower_UTM18N.shp")

# Answer the following questions:
# 1. What type of R spatial object is created when you import each layer?
# 2. What is the CRS and extent for each object?
# 3. Do the files contain points, lines, or polygons?
# 4. How many spatial objects are in each file?

# Plot multiple shapefiles in R

ggplot() + 
  geom_sf(data = aoi_boundary_HARV, fill = "grey", color = "grey") +
  geom_sf(data = lines_HARV, aes(color = TYPE), size = 1) +
  geom_sf(data = point_HARV) +
  ggtitle("NEON Harvard Forest Field Site") + 
  coord_sf()

