#' Getting centroid from polygons (Centroids in lat long)
#'
#' @param x A SpatVector or sf polygon object.
#' @return The table of centroids with longitude and latitude.
#' @examples
#' library(terra)
#' library(SpatialR)
#' br = vect("C:/Users/Workshop/Documents/Research/Programming/SpatialR/Shapes/Brazil_States.shp")
#' polycent(br)
#'
#' @export
polycent <- function(x) {
  # Verificar se o objeto é do tipo SpatVector (terra)
  if (inherits(x, "SpatVector")) {
    centroids <- terra::centroids(x)  # Calcular centróides usando terra
    coords <- terra::geom(centroids)[, c("x", "y")]
    return(data.frame(long = coords[, "x"], lat = coords[, "y"]))

    # Verificar se o objeto é do tipo sf
  } else if (inherits(x, "sf")) {
    centroids <- sf::st_centroid(x)  # Calcular centróides usando sf
    coords <- sf::st_coordinates(centroids)
    return(data.frame(long = coords[, 1], lat = coords[, 2]))

    # Caso contrário, retornar um erro
  } else {
    stop("The input must be a SpatVector (terra) or sf object.")
  }
}
