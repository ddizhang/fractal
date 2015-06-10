\name{kochPlus}
\alias{kochPlus}
\title{
Generate a General Koch Curve with a Given Pattern
}
\description{
Generate a General Koch Curve given the start and end point of a segment.
}
\usage{
kochPlus(x1, x2, y1, y2, itr, ptn)
}
\arguments{
  \item{x1}{
x coordinate of the start point of koch curve
}
  \item{x2}{
x coordinate of the end point of koch curve
}
  \item{y1}{
y coordinate of the start point of koch curve
}
  \item{y2}{
y coordinate of the end point of koch curve
}
  \item{itr}{
number of iteration
}
  \item{ptn}{
a data frame defining the pattern. See kochPattern()
}
}

\value{

  \item{curve }{coordinates of each turning point on koch curve}
  \item{iteration }{iteration time}

}

\examples{
par(mfrow = c(1,1))
ptn = kochPattern()
test = kochPlus(0, 10, 0, 0, 4, ptn)
plot(test, lwd = 2, axes = FALSE)
}
