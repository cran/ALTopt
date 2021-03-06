% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ALTopt.R
\name{pv.contour.ic}
\alias{pv.contour.ic}
\title{Contour plot of prediction variance for a design with interval censoring.}
\usage{
pv.contour.ic(
  design,
  xAxis,
  yAxis,
  t,
  k,
  nf,
  alpha,
  formula,
  coef,
  useCond = NULL,
  useLower = NULL,
  useUpper = NULL
)
}
\arguments{
\item{design}{the data frame containing the coordinates and the number of
allocation of each design point. The design created by either
\code{\link{altopt.rc}} or \code{\link{altopt.ic}} or any design matrix
with the same form as those can be provided for this argument.}

\item{xAxis}{the name of the factor to be displayed in x axis.}

\item{yAxis}{the name of the factor to be displayed in y axis.}

\item{t}{the total testing time.}

\item{k}{the number of time intervals.}

\item{nf}{the number of stress factors.}

\item{alpha}{the value of the shape parameter of Weibull distribution.}

\item{formula}{the object of class formula which is the linear predictor model.}

\item{coef}{the numeric vector containing the coefficients of each term in \code{formula}.}

\item{useCond}{the vector of specified use condition. If it is provided,
the contour line will be generated up to this point.}

\item{useLower, useUpper}{the vector of the use region. If these are
provided, the contour line will be generated up to this region.
Note that either \code{useCond} or both of \code{useLower, useUpper}
should be provided.}
}
\value{
The contour plot of prediction variance for interval censoring.
}
\description{
\code{\link{pv.contour.ic}} draws the contour plot of prediction variance
for a given design with interval censoring plan. Either \code{useCond} or
use region (\code{useLower} and \code{useUpper}) should be
provided.
}
\examples{
\dontrun{
# Contour plot of prediction variance of U optimal design with interval censoring.
Design <- altopt.ic("D", 100, 30, 5, 2, 1, formula = ~ x1 + x2 + x1:x2,
coef = c(0, -4.086, -1.476, 0.01), useCond = c(1.758, 3.159))

pv.contour.ic(Design$opt.design.rounded, x1, x2, 30, 5, 2, 1,
formula = ~ x1 + x2 + x1:x2, coef = c(0, -4.086, -1.476, 0.01), useCond = c(1.758, 3.159))
}
}
\seealso{
\code{\link{altopt.ic}}
}
