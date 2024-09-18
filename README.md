# SpatialR
 Comprehensive spatial tools for geographic data

SpatialR is a comprehensive R package offering a suite of spatial tools
designed for diverse geographic data needs. With functionality tailored for
working with rasters and shapefiles, this package provides an extensive range
of tools for spatial analysis, mapping, and data manipulation. Whether you’re
conducting environmental assessments or spatial data management, SpatialR equips
you with the essential tools to handle various geographic data tasks efficiently.


# Functions:
## polycent {SpatialR}	(preview) R Documentation
Getting centroid from polygons (Centroids in lat long)
Description
Getting centroid from polygons (Centroids in lat long)

### Usage
polycent(x)
Arguments
x	
A SpatVector or sf polygon object.

### Value
The table of centroids with longitude and latitude.

### Examples
Run examples

library(terra)
library(SpatialR)
br = vect("Shapes/Brazil_States.shp")
polycent(br)
