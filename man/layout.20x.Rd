\name{layout.20x}
\alias{layout.20x}
\title{Layout}
\usage{layout.20x(x,y)}

\arguments{
\item{x}{number of rows in plot array.}
\item{y}{number of columns in plot array.}
}

\description{Specifies an m*n array of plots in the graphics window.}

\value{Function returns no value.}

\examples{
data(course.df)
attach(course.df)
layout.20x(1,2)
stripchart(Exam)
boxplot(Exam)
detach(course.df)
}

\keyword{device}


