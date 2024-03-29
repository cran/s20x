% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cooks20x.R
\name{cooks20x}
\alias{cooks20x}
\title{Cook's distance plot}
\usage{
cooks20x(
  x,
  main = "Cook's Distance plot",
  xlab = "observation number",
  ylab = "Cook's distance",
  line = c(0.5, 1.2, 2),
  cex.labels = 1,
  axisOpts = list(xAxis = TRUE, yAxisTight = FALSE),
  ...
)
}
\arguments{
\item{x}{an object of class \code{lm}, usually obtained by using the \code{\link{lm}} function.}

\item{main}{the plot title}

\item{xlab}{the x-axis title.}

\item{ylab}{the y-axis title.}

\item{line}{a vector of length 3 controlling the distances of the plot title, the x-axis title and the y-axis title 
from the axis in line units.}

\item{cex.labels}{a factor controlling the font size of the labels on suspected high influence points.}

\item{axisOpts}{a list of additional arguments that can be used to control the axes. At this point
this list only contains one element \code{xAxis} which is logical. If \code{xAxis == TRUE} then the 
x-axis will be displayed, and clearly, if it is \code{FALSE}, then it will not.}

\item{\dots}{additional arguments are passed to \code{plot} and may provide some extra flexibility.}
}
\value{
Returns the plot and identifies the three highest Cook's values
}
\description{
Draws a Cook's distance plot.
}
\examples{

# Peruvian Indians data
data(peru.df)
peru.fit = lm(BP ~ age + years + I(years^2) + weight + height, data = peru.df)
cooks20x(peru.fit)

}
\keyword{hplot}
