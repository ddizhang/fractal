\name{koch}
\alias{koch}
\title{
Generate a Classical Koch Curve
}
\description{
Generate a Classical Koch Curve given the start and end point of a segment.
}
\usage{
koch(x1, x2, y1, y2, itr)
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
}

\value{

  \item{curve }{coordinates of each turning point on koch curve}
  \item{iteration }{iteration time}

}

\examples{
#koch = koch(0, 10, 0, 0, 1)
#plot(koch)
}
