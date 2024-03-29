% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/predict20x.R
\name{predict20x}
\alias{predict20x}
\title{Model Predictions for a Linear Model}
\usage{
predict20x(object, newdata, cilevel = 0.95, digit = 3, print.out = TRUE, ...)
}
\arguments{
\item{object}{an \code{lm} object, i.e. the output from \code{lm}.}

\item{newdata}{prediction data frame.}

\item{cilevel}{confidence level of the interval.}

\item{digit}{decimal numbers after the point.}

\item{print.out}{if \code{TRUE}, print out the prediction matrix.}

\item{\dots}{optional arguments that are passed to the generic 'predict'}
}
\value{
\item{frame}{vector or matrix including predicted values, confidence
intervals and predicted intervals.} \item{fit}{prediction values.}
\item{se.fit}{standard error of predictions.} \item{residual.scale}{residual
standard deviations.} \item{df}{degrees of freedom for residual.}
\item{cilevel}{confidence level of the interval.}
}
\description{
Uses the main output and some error messages from R function 'predict' but
gives you more output. (Error messages are not reliable when used in Splus.)
}
\details{
Note: The data frame, newdata, must have the same column order and data
types (e.g. numeric or factor) as those used in fitting the model.
}
\note{
This function is deprecated. It will be removed in future versions of the package.

this function is deprecated as it is never used in class any more. We prefer the standard \code{\link{predict}} method.
}
\examples{

# Zoo data
data(zoo.df)
zoo.df = within(zoo.df, {day.type = factor(day.type)})
zoo.fit = lm(log(attendance) ~ time + sun.yesterday + nice.day + day.type + tv.ads,
             data = zoo.df)
pred.zoo = data.frame(time = 8, sun.yesterday = 10.8, nice.day = 0,
                      day.type = factor(3), tv.ads = 1.181)
predict20x(zoo.fit, pred.zoo)

# Peruvian Indians data
data(peru.df)
peru.fit = lm(BP ~ age + years + I(years^2) + weight + height, data = peru.df)
pred.peru = data.frame(age = 21, years = 2, `I(years^2)` = 2, weight = 71, height = 1629)
predict20x(peru.fit, pred.peru)

}
\seealso{
\code{\link{predict}}, \code{\link{predict.lm}}, \code{\link{as.data.frame}}.
}
\keyword{htest}
