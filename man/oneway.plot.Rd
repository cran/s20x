\name{oneway.plot}
\alias{oneway.plot}
\title{One-way Analysis of Variance Plot}
\usage{
oneway.plot(formula, conf.level = 0.95, interval.type = "tukey",
            pooled = TRUE, strip = TRUE, vert = TRUE, verbose = FALSE,
	    ylabel = deparse(terms(formula)[[2]]),
	    flabel = deparse(terms(formula)[[3]]))
}
\arguments{
 \item{formula}{a symbolic description of the model to be fit.}
 \item{conf.level}{confidence level of the intervals.}
 \item{interval.type}{three options for intervals appearing on plot:
   "hsd","lsd" or "ci".}
 \item{pooled}{two options: pooled or unpooled standard deviation used
   for plotted intervals.}
 \item{strip}{if strip=F, boxplots are displayed instead.}
 \item{vert}{if vert=F, horizontal stripplots are displayed instead
   (boxplots can only be displayed vertically).}
 \item{verbose}{if true, print intervals on console.}
 \item{ylabel}{can be used to replace variable name of y by another string.}
 \item{flabel}{can be used to replace variable name of f by another string.}
}
\description{
Displays stripplot/boxplot of the reponse variable with intervals
 by factor levels. It is used as part of a one-way anova analysis.
}

\seealso{"summary.1way", "welch.test".}

\examples{
##see example in "summary.1way"

##sheep data:
data(computer.df)
attach(computer.df)
oneway.plot(score~selfassess)
detach(computer.df)
}

\keyword{hplot}


