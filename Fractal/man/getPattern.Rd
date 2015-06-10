\name{getPattern}
\alias{getPattern}
\title{
Get the point set from 
}
\description{
 Allow the user to define a pattern to generate Koch Curve by clicking on a plot. Returns a dataframe with x-y coordinates of the points. Defined pattern includes a segment connecting the leftmost point on the original line to the first click, and a segment connecting the last click to the rightmost point.
}

\usage{
getPattern()
}

\examples{
#pts = getPattern()
}