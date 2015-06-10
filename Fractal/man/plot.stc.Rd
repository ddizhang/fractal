\name{plot.stc}
\alias{plot.stc}
\title{plot the ArrowHead Curve
}
\description{Use S3 class to plot the ArrowHead Curve}
\usage{
\method{plot}{stc}(x,...)
}
\arguments{
  \item{x}{
An objec with class of stc.
}
  \item{\dots}{
see in plot() function
}
} 
\value{a graph visualize the ArrowHead Curve Set}
\examples{
#Arrow.sample = ArrowheadCurve(3)
#plot(Arrow.sample)

function (x, ...) 
{
    plot(x[, 1], x[, 2], type = "l", axes = FALSE, xlab = "", 
        ylab = "")
  }
}

\keyword{plot }

