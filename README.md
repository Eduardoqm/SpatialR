# ![logo](https://github.com/Eduardoqm/SpatialR/blob/main/SpatialR_logo200.png?raw=true) **Spatial tools for geographic data**

Create by: [Eduardo Q. Marques](https://eduardoqm.github.io/)

**SpatialR** is a comprehensive R package offering a suite of spatial tools designed for diverse geographic data needs. With functionality tailored for working with **rasters** and **shapefiles**, this package provides tools for spatial analysis, mapping, and data manipulation.

## Installing the **SpatialR** Package

### Step 1: Install `devtools` Package

If you don't have `devtools` installed, run:

``` r
install.packages("devtools")
```

### Step 2: Install Spatial R from GitHub

Use devtools to install the SpatialR package from GitHub:

``` r
devtools::install_github("Eduardoqm/SpatialR")
```

### Step 3: Load the Package

Once installed, load the package with:

``` r
library(SpatialR)
```



## Functions
polycent()
For SpatVector or sf objects. Return a table of centroids with longitude and latitude.
