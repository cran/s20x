\name{pairs20x}
\alias{pairs20x}
\alias{pairs.20x}
\title{Pairwise Scatter Plots with Histograms and Correlations}
\usage{
pairs20x(x, ...)
}

\arguments{
  \item{x}{a data frame.}
  \item{\dots}{optional argumments which are passed to the generic pairs.}
}
\description{Plots pairwise scatter plots with histograms and correlations for the data frame.

Note that the "pairs.20x" function is deprecated. Will be obsolete as of December 2008. It is recommended that you use pairs20x instead.}

\value{Returns the plots.}

\seealso{
\code{"pairs", "panel.smooth", "panel.cor", "panel.hist"}
}

\examples{
##peruvian indians
data(peru.df)
attach(peru.df)
pairs20x(peru.df)
detach(peru.df)
}

\keyword{hplot}






