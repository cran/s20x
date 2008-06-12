\name{cooks.20x}
\alias{cooks.20x}
\title{Cook's distance  plot}
\usage{cooks.20x(lmfit)}

\arguments{
\item{lmfit}{output from the function "lm()".}
}
\description{Draws a Cook's distance plot.}

\value{Returns the plot and identifies the three highest Cook's values}

\examples{
# Peruvian Indians data
data(peru.df)
attach(peru.df)
fit1<-lm(BP~age+years+I(years^2)+weight+height)
cooks.20x(fit1)
detach(peru.df)
}

\keyword{hplot}


