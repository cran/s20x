\name{multiple.comp}
\alias{multiple.comp}
\title{Multiple Comparisons}
\usage{multiple.comp(fit,conf.level=0.95)}

\arguments{
\item{fit}{output from the command "lm()".}
\item{conf.level}{confidence level for the confidence interval, expressed as a percentage.}
}

\description{Calculates and prints the estimate, multiple 95\% confidence intervals; unadjusted, Tukey and Bonferroni p-values for all possible differences in means in a one-way ANOVA.
differences in means in a one-way ANOVA.}

\value{Returns a list of estimates, confidence intervals and p-values. }

\examples{
## computer data
data(computer.df)
attach(computer.df)
fit <- lm(score ~ factor(selfassess))
multiple.comp(fit)
detach(computer.df)
}

\keyword{htest}


