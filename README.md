
<!-- Badges Start -->
[![Travis-CI Build Status](https://travis-ci.org/frycast/rcosmo.svg?branch=master)](https://travis-ci.org/frycast/rcosmo) 
[![CRAN Versions](http://www.r-pkg.org/badges/version/rcosmo)](https://CRAN.R-project.org/package=rcosmo) 
[![CRAN release dates](http://www.r-pkg.org/badges/version-ago/rcosmo)](https://CRAN.R-project.org/package=rcosmo) 
[![CRAN downloads](http://cranlogs.r-pkg.org/badges/grand-total/rcosmo)](https://CRAN.R-project.org/package=rcosmo) 
[![CRAN downloads](http://cranlogs.r-pkg.org/badges/last-week/rcosmo)](https://CRAN.R-project.org/package=rcosmo) [![Lifecycle Status](https://img.shields.io/badge/lifecycle-maturing-blue.svg)](https://www.tidyverse.org/lifecycle/)
<!-- Badges End -->


<!-- [![Code coverage](https://codecov.io/gh/frycast/rcosmo/branch/master/graph/badge.svg)](https://codecov.io/github/frycast/rcosmo?branch=master) -->

# The `rcosmo` project

The Cosmic Microwave Background (CMB) is remnant electromagnetic radiation from the epoch of recombination. As an ancient source of data on the early universe, the CMB is helping us unlock the mysteries of the Big Bang and the structure of time and space. Spurred on by a wealth of satellite data, intensive investigations in the past few years have resulted in many physical and mathematical results to characterize CMB radiation. An advanced R programming toolkit is needed to help statisticians perform CMB data analytics. 

`rcosmo` addresses various data processing and statistical analysis needs for the present generation of CMB experiments. These needs fall into the following broad categories:
+ Importing and transforming HEALPix data in convenient CMBDataFrames
+ Geometric tools
+ Statistical tools
+ Visualisation

The current version of `rcosmo` includes the following functionality:
+	Generation of a comprehensive data frame of CMB observations, which include HEALPix indices, metadata, CMB intensities and their
  corresponding spherical and/or cartesian coordinates, as well as polarization data
+	Window subsetting tools for investigating circular, convex and non-convex polygonal sub-regions on the sphere
+	Fast empirical covariance and variogram estimation
+	Implementation and analysis of spherical harmonics, spherical wavelets, etc
+	Various methods for CMB map visualization, such as interactive 3D full sky maps rendered with OpenGL, polygon boundary visualisation, and HEALPix pixel boundary plotting
+ Spherical geometry tools such as shortest distance between two points, calculate spherical angles, shortest distance between a point and a region, etc



# Installation

From CRAN:

```r
install.packages('rcosmo')
```

Alternatively, from GitHub:

```r
install_github('frycast/rcosmo')
```

# Usage

```r
library(rcosmo)
```

View the `CMBDataFrame` help file:

```r
?CMBDataFrame
```

Download and plot a CMB map from NASA archives (takes some time to download):

```r
downloadCMBMap()
sky <- CMBDataFrame("CMB_map_smica1024.fits", sample.size = 1e6)
plot(sky)
```

Produce a summary of the map:

```r
summary(sky)
```

Extract a region of the sky:

```r
win <- CMBWindow(theta = c(pi/2,pi/2,pi/3, pi/3), phi = c(0,pi/3,pi/3,0))
sky_win <- window(sky, new.window = win)
plot(sky_win); plot(win)
```

Summarise the region of the sky:

```r
summary(sky_win)
```
More documentation on the way, for now view examples in the help files. There are many functions, see:

```r
lsf.str("package:rcosmo")
```
