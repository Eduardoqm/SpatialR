#' Generate centroid points from polygons
#'
#' @param x A SpatVector or sf polygon object.
#' @return The points of centroids.
#' @examples
#' library(rnaturalearth)
#' library(SpatialR)
#'
#' br = vect(rnaturalearth::ne_states("Brazil", returnclass = "sf"))
#' plot(br)
#'
#' point_br = pointcent(br)
#' plot(point_br, add = T)
#'
#' @export
pointcent <- function(x) {
  # Verificar se o objeto é do tipo SpatVector (terra)
  if (inherits(x, "SpatVector")) {
    centroids <- terra::centroids(x)  # Calcular centróides usando terra
    coords <- terra::geom(centroids)[, c("x", "y")]
    df <- data.frame(long = coords[, "x"], lat = coords[, "y"])
    points_vect <- vect(df, geom = c("long", "lat"), crs = "EPSG:4326")
    return(points_vect)

    # Verificar se o objeto é do tipo sf
  } else if (inherits(x, "sf")) {
    centroids <- sf::st_centroid(x)  # Calcular centróides usando sf
    coords <- sf::st_coordinates(centroids)
    df <- data.frame(long = coords[, 1], lat = coords[, 2])
    points_vect <- vect(df, geom = c("long", "lat"), crs = "EPSG:4326")
    return(points_vect)

    # Caso contrário, retornar um erro
  } else {
    stop("The input must be a SpatVector (terra) or sf object.")
  }
}
