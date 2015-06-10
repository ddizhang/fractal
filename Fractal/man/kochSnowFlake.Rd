\name{kochSnowFlake}
\alias{kochSnowFlake}
\title{
Generate a Classical Koch Snow Flake
}
\description{
Generate a Classical Koch snow flake given the start and end point of a segment.
}
\usage{
kochSnowFlake(a, itr)
}
\arguments{
  \item{a}{
the length of each edge on the original snowflake
}
  \item{itr}{
number of iteration
}
}

\examples{
snow = kochSnowFlake(2, 3)
plot(snow)
}
