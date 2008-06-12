\name{normcheck}
\alias{normcheck}
\alias{normcheck.default}
\alias{normcheck.lm}
\title{Testing for normality plot}
\usage{
normcheck(x, \dots)
\method{normcheck}{default} (x, xlab = NULL, col = NULL, \dots)
\method{normcheck}{lm} (x, xlab = NULL, col = NULL, \dots)
}
\arguments{
  \item{x}{the residuals from fitting a linear model.
    Alternatively, a fitted lm object.}

  \item{xlab}{a title for the x axis: see \code{\link{title}}.}
  \item{col}{a color for the bars of the histogram.}
  \item{\dots}{Optional arguments}
}
\description{
  Plots two plots side by side. Firstly it draws a Normal QQ-plot of the
  residuals, along with a line which has an intercept at the mean of the
  residuals and a slope equal to the standard deviation of the
  residuals. In the top left hand corner, the P-value from the
  Shapiro-Wilk test for normality is given. Secondly, it draws a
  histogram of the residuals. A normal distribution is fitted and
  superimposed over the histogram.
}
\seealso{"shapiro.test"}

\examples{
# An exponential growth curve
e<-rnorm(100,0,0.1)
x<-rnorm(100)
y<-exp(5+3*x+e)
fit<-lm(y~x)
normcheck(fit)

# An exponential growth curve with the correct transformation
fit<-lm(log(y)~x)
normcheck(fit)

# Same example as above except we use normcheck.default
normcheck(residuals(fit))

# Peruvian Indians data
data(peru.df)
normcheck(lm(BP~weight, data=peru.df))
}

\keyword{hplot}












