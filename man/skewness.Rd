\name{skewness}
\alias{skewness}
\title{Skewness Statistic}
\usage{skewness(x)}

\arguments{
\item{x}{vector containing the data.}}

\description{Calculates the skewness statistic of the data in "x". Values close to zero correspond to reasonably symmetric data, positive values of this measure indicate right-skewed data whereas negative values indicate left-skewness. }

\value{Returns the value of the skewness.}

\examples{
##Merger data:
data(mergers)
attach(mergers)
skewness(mergerdays)
detach(mergers)
}

\keyword{univar}


