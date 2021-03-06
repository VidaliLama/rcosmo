% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Statistics.R
\name{plotcovmodelCMB}
\alias{plotcovmodelCMB}
\title{Plot theoretical CMBCovariance}
\usage{
plotcovmodelCMB(cov.model = "matern", sigmasq = 1, phi = pi,
  kappa = 0.5, from = 0, to = pi, ...)
}
\arguments{
\item{cov.model}{A type of the correlation function. Available choices are: "matern",
"exponential","spherical", "powered.exponential", "cauchy", "gencauchy", "pure.nugget",
"askey", "c2wendland", "c4wendland", "sinepower", "multiquadric". The default is "matern"}

\item{sigmasq}{The variance parameter as documented in \code{\link{covmodelCMB}}.
The default is 1.}

\item{phi}{The range parameter as documented in \code{\link{covmodelCMB}}. The default is
\code{pi}.}

\item{kappa}{A smoothness parameter of the correlation function. The default is 0.5.}

\item{from}{A lower range of the plotting region. The default is \code{lb =0}}

\item{to}{An upper range of the plotting region. The default is \code{ub= pi}.}

\item{...}{optional plotting parameters.}
}
\value{
Produces a plot with the theoretical covariance function.
}
\description{
Plots theoretical covariance functions from the list defined in \code{\link{covmodelCMB}}
}
\examples{

plotcovmodelCMB("matern", sigmasq = 5)
plotcovmodelCMB("askey", phi = pi/4, to  = pi/2, kappa = 4)


}
\references{
\code{\link{covmodelCMB}}
}
