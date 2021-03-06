## starsExtra 0.0.3 (2020-04-22)

* Initial version
* Added 'focal2r' and 'focal2' functions
* Added 'focal2' function
* Added 'flowlength' function
* Added 'detrend' function
* Added 'w_azimuth' function
* Added 'w_circle' function
* Added 'CI' function
* Added 'aspect' function
* Added vignette with illustrations

## starsExtra 0.1.0 (2020-06-25)

* Added 'trim' function
* Switched from 'testthat' to 'tinytest'
* Replaced 'if' with 'switch' in C code
* Added 'slope' function

## starsExtra 0.1.2 (2020-08-31)

* Added multi-band sample data ('landsat')
* Added 'st_normalize_2d' and 'st_normalize_3d' functions

## starsExtra 0.2.0 (2020-11-01)

* 'trim' renamed to 'trim2' & now also works on multi-band rasters
* Added 'extract2' function
* Added 'make_grid' function
* Added 'dist_to_nearest' function
* Added tests for 'extract2'
* Added 'pkgdown' site
* Added 'progress' option to 'flowlength' and 'dist_to_nearest'

## starsExtra 0.2.2 (2021-01-10)

* Added 'mode_value' function
* Added "mode" option in 'focal2'

## starsExtra 0.2.4 (2021-03-16)

* Added 'footprints' function
* Added 'rgb_to_grey' function
* Added weights matrix 'w' (instead of 'k') argument in 'focal2r'

## starsExtra 0.2.5

* Fixed reversed 'nrow'/'ncol' in 'matrix_to_stars'

## To do

* Allow 'NA' in focal weight matrix
* Circular mean (function(x) (circ.mean((as.numeric(x) * pi) / (180)) * 180) / pi)
* Classify aspect to N/E/W/S
* Histogram equalization ('imager')
* Add five options for dealing with ties in 'focal2'/"mode" (first, last, min, max, random)
* Function to convert factor 'stars' to numeric
* Make consistent argument names 'x' and 'v' (raster and vector, respectively)
* Parallel processing in 'CI' function
* Improve 'extract2' function (exactextractr?)
