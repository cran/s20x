% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/crossFactors.R
\name{crossFactors}
\alias{crossFactors}
\alias{crossFactors.default}
\alias{crossFactors.formula}
\title{Crossed Factors}
\usage{
crossFactors(x, fac2 = NULL, ...)

\method{crossFactors}{default}(x, fac2 = NULL, ...)

\method{crossFactors}{formula}(formula, fac2 = NULL, data = NULL, ...)
}
\arguments{
\item{x}{the name of the first factor or a formula in the form \code{~ fac1 * fac2}}

\item{fac2}{the name of the second factor - ignored if \code{x} is a formula.}

\item{\dots}{Optional arguments}

\item{formula}{a formula in the form \code{~ fac1 * fac2}}

\item{data}{an optional data frame in which to evaluate the formula}
}
\value{
Returns a vector containing the factor which represents the
interaction of the given factors.
}
\description{
Computes a factor that has a level for each combination of the factors
'fac1' and 'fac2'.
}
\section{Methods (by class)}{
\itemize{
\item \code{crossFactors(default)}: Crossed Factors

\item \code{crossFactors(formula)}: Crossed Factors

}}
\note{
This function actually returns a \code{factor} now instead of a character string, so coercion into a \code{factor} is no longer necessary.
}
\examples{

## arousal data:
data(arousal.df)
gender.picture = crossFactors(arousal.df$gender, arousal.df$picture)
gender.picture

## arousal data:
data(arousal.df)
gender.picture = crossFactors(~ gender * picture, data = arousal.df)
gender.picture


}
\seealso{
\code{\link{factor}}.
}
\keyword{models}
