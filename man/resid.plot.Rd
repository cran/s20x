\name{resid.plot}
\alias{resid.plot}
\title{Fitted values versus residuals plot}
\usage{
resid.plot(lmfit,f=0.5)
}
\arguments{
 \item{lmfit}{an lm object, i.e. the output from "lm()".} 
 \item{f}{the smoother span. This gives the proportion of points in the
          plot which influence the smooth at each value. Larger values
          give more smoothness.}
}
\description{
Plots a scatter plot for the variables of the residuals and fitted values from the linear model, lmfit.
A lowess smooth line for the underlying trend, as well as one standard deviation 
error bounds for the scatter about this trend, are added to this scatter plot. A test for a 
quadratic relationship between the residuals and the fitted values is also computed. 

}
\value{Returns the plot.}
\seealso{"trendscatter"}

\examples{
# Peruvian Indians data
data(peru)
attach(peru)
fit<-lm(BP~age+years+weight+height)
resid.plot(fit)
}

\keyword{hplot}


