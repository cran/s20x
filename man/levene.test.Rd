\name{levene.test}
\alias{levene.test}
\title{Levene test for the ANOVA Assumption}
\usage{levene.test(formula, data, digit = 5)}

\arguments{
\item{formula}{a symbolic description of the model to be fit: response ~ fac1 + fac2.}
\item{data}{an optional data frame containing the variables in the model.}
\item{digit}{the number of decimal places to display.}
}

\description{Perform a Levene test for equal group variances in both one-way and two-way ANOVA. A table with the results is displayed.}

\value{
  \item{Df}{degrees of freedom.}
  \item{Sum of Sq}{sum squares.}
  \item{Mean Sq}{mean squares.}
  \item{F value}{F-statistic value.}
  \item{Pr(F)}{P-value.}
}

\seealso{"interaction.20x", "anova".}

\examples{
## 
data(computer)
levene.test(score ~ factor(selfassess), computer)
}

\keyword{htest}




