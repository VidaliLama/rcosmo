% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/HPDataFrame.R
\name{summary.HPDataFrame}
\alias{summary.HPDataFrame}
\title{Summarise a \code{\link{HPDataFrame}}}
\usage{
\method{summary}{HPDataFrame}(object, intensities = "I", ...)
}
\arguments{
\item{object}{A HPDataFrame.}

\item{intensities}{the name of a column specifying intensities
(or potentially another numeric quantity of interest)}

\item{...}{Unused arguments.}
}
\value{
A summary includes window's type and area,
total area covered by observations,
and main statistics for intensity values
}
\description{
This function produces a summary from a HPDataFrame.
}
\examples{
ns <- 2
hpdf <- HPDataFrame(I = rnorm(12*ns^2), nside = 2,
                    ordering = "nested")
win <- CMBWindow(theta = c(0,pi/2,pi/2), phi = c(0,0,pi/2))
hpdf.win <- window(hpdf, new.window = win)
summary(hpdf.win)

}
