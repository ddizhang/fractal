\name{modKochPattern}
\alias{modKochPattern}
\title{
Modify a set of points to a form that is usable by kochPlus() function
}
\description{
Takes in a data frame with two columns "x" and "y". Returns a data frame with two columns: first one is the distance from the pattern point to original point. second one is the angle between horizontal axis and the segment connecting the origin and the pattern point.
}
\usage{
modKochPattern(pts)
}

\arguments{
  \item{pts}{
a data frame with 2 columns "x" and "y"
}
}
