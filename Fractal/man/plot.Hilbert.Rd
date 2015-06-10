\name{plot.Hilbert}
\alias{plot.Hilbert}
\title{
Display the hilbert curve matrix
}
\description{
Display a Hilbert object in the R console
}
\usage{
\method{plot}{Hilbert}(x,...)
}
\arguments{
  \item{x}{
A matrix object,typically result of CreateHilbert or hilbert.curve.
}
  \item{\dots}{
see in plot() function
}
} 

\examples{
#H = CreateHilbert( grap = FALSE )
#plot( H )

## The function is currently defined as
function (x) 
{
    plot(x[, 1], x[, 2], type = "l", pch = 19, cex = 0.5, ylim = c(0, 
        1), xlim = c(0, 1), ylab = character(1), xlab = character(1), 
        axes = FALSE)
    box()
  }
}

