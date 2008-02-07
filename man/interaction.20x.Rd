\name{interaction.20x}
\alias{interaction.20x}
\title{Interaction}
\usage{interaction.20x(fac1,fac2)}

\arguments{
\item{fac1}{the name of the first factor.}
\item{fac2}{the name of the second factor.}}

\description{Computes a factor that has a level for each combination of the factors "fac1" and "fac2".}

\value{Returns a vector containing the factor which represents the interaction of the given factors.}

\seealso{"factor".}

\examples{
## arousal data:
data(arousal)
attach(arousal)
gender.picture<-factor(interaction.20x(gender,picture))
gender.picture
detach(arousal)
}

\keyword{models}


