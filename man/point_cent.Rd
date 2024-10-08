% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/point_cent.R
\name{point_cent}
\alias{point_cent}
\title{Generate centroid points from polygons}
\usage{
point_cent(x)
}
\arguments{
\item{x}{A SpatVector or sf polygon object.}
}
\value{
The points of centroids.
}
\description{
Generate centroid points from polygons
}
\examples{
library(rnaturalearth)
library(SpatialR)

br = vect(rnaturalearth::ne_states("Brazil", returnclass = "sf"))
plot(br)

point_br = point_cent(br)
plot(point_br, add = T)

}
