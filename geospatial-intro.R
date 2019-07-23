# make sure you have the necessary packages installed and loaded
install.packages(c("tidyverse", "raster", "rgdal", "rasterVis", "sf"))
library(tidyverse)
library(raster)
library(rgdal)
library(rasterVis)
library(sf)


# make sure you have the data downloaded and unzipped
download.file(url = "https://ndownloader.figshare.com/articles/2009586/versions/10",
              destfile = "data/2009586.zip",
              mode = 'wb')
unzip("data/2009586.zip",
      exdir = "data")
unzip("data/NEON-DS-Airborne-Remote-Sensing.zip",
      exdir = "data")
unzip("data/NEON-DS-Landsat-NDVI.zip",
      exdir = "data")
unzip("data/NEON-DS-Met-Time-Series.zip",
      exdir = "data")
unzip("data/NEON-DS-Site-Layout-Files.zip",
      exdir = "data")

# Open and plot shapefiles in R
aoi_boundary_HARV <- st_read(
  "data/NEON-DS-Site-Layout-Files/HARV/HarClip_UTMZ18.shp")

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

# Explore and Plot by Shapefile Attributes

#########################################################
## Challenge: Attributes for Different Spatial Classes ##
#########################################################
# Explore the attributes associated with the point_HARV and aoi_boundary_HARV spatial objects.
# How many attributes does each have?
# 1. Who owns the site in the point_HARV data object?
# 2. Which of the following is NOT an attribute of the point_HARV data object?
# A) Latitude B) County C) Country




###################################################
## Challenge: Subset Spatial Line Objects Part 1 ##
###################################################
# Subset out all of the boardwalks from the lines layer and plot it






###################################################
## Challenge: Subset Spatial Line Objects Part 2 ##
###################################################
# Subset out all stone wall features from the lines layer and plot it. For each 
# plot, color each feature using a unique color.

#############################################
## Challenge: Plot Line Width by Attribute ##
#############################################
# In the example above, we set the line widths to be 1, 2, 3, and 4. Because R 
# orders factor levels alphabetically by default, this gave us a plot where 
# woods roads (the last factor level) were the thickest and boardwalks were the 
# thinnest.
# Let’s create another plot where we show the different line types with the 
# following thicknesses:
# woods road size = 6
# boardwalks size = 1
# footpath size = 3
# stone wall size = 2

##########################################
## Challenge: Plot Polygon by Attribute ##
##########################################
# Create a map of the state boundaries in the United States using the data 
# located in your downloaded data folder: 
# NEON-DS-Site-Layout-Files/US-Boundary-Layers\US-State-Boundaries-Census-2014 
# Apply a fill color to each state using its region value. Add a legend.


# Plot multiple shapefiles in R


