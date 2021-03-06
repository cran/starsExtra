% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/focal2r.R
\name{focal2r}
\alias{focal2r}
\title{Apply a focal filter on a raster (R)}
\usage{
focal2r(x, w, fun, mask = FALSE, ...)
}
\arguments{
\item{x}{A raster (class \code{stars}) with two dimensions: \code{x} and \code{y}, i.e., a single-band raster}

\item{w}{Weights matrix defining the neighborhood size around the focal cell, as well as the weights. For example, \code{matrix(1,3,3)} implies a neighborhood of size 3*3 with equal weights of 1 for all cells. Focal cell values are multiplied by the matrix values before being passed to function \code{fun}. The matrix must be square, i.e., with an odd number of rows and columns.}

\item{fun}{A function to be applied on each neighborhood, after it has been multiplied by the matrix. The function needs to accepts a vector (of length equal to \code{length(w)} and return a vector of length \code{1}}

\item{mask}{If \code{TRUE}, pixels with \code{NA} in the input are set to \code{NA} in the output as well, i.e., the output is "masked" with the input (default \code{FALSE})}

\item{...}{Further arguments passed to \code{fun}}
}
\value{
The filtered \code{stars} raster
}
\description{
Applies a focal filter with neighborhood size \code{k}*\code{k} on a raster (class \code{stars}), using R code. This function is relatively slow, provided here mainly for testing purposes or for custom using functions which are not provided by \code{focal2}.
}
\note{
The raster is "padded" with one more row/column of \code{NA} values on all sides, so that the neigborhood of the outermost rows and columns is still a complete 3x3 neighborhood. Those rows and columns are removed from the filtered result before returning it.
}
\examples{
\donttest{
# Small example
data(dem)
dem1 = focal2r(dem, matrix(1,3,3), mean, na.rm = TRUE)
dem2 = focal2r(dem, matrix(1,3,3), min, na.rm = TRUE)
dem3 = focal2r(dem, matrix(1,3,3), max, na.rm = TRUE)
r = c(dem, round(dem1, 1), dem2, dem3, along = 3)
r = st_set_dimensions(r, 3, values = c("input", "mean", "min", "max"))
plot(r, text_values = TRUE, breaks = "equal", col = terrain.colors(10))
# Larger example
data(carmel)
carmel1 = focal2r(carmel, matrix(1,3,3), mean, na.rm = TRUE, mask = TRUE)
carmel2 = focal2r(carmel, matrix(1,9,9), mean, na.rm = TRUE, mask = TRUE)
carmel3 = focal2r(carmel, matrix(1,15,15), mean, na.rm = TRUE, mask = TRUE)
r = c(carmel, carmel1, carmel2, carmel3, along = 3)
r = st_set_dimensions(r, 3, values = c("input", "k=3", "k=9", "k=15"))
plot(r, breaks = "equal", col = terrain.colors(100))
}

}
