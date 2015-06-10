\name{hilbert.curve}
\alias{hilbert.curve}
\title{
The function to growth the Hilbert curve n steps
}
\description{
After given original Hilbert curve matrix, this function could move the Hilbert curve n steps.
}
\usage{
hilbert.curve(H, nsteps)
}
\arguments{
  \item{H}{
The beginning original Hilbert curve matrix.
}
  \item{nsteps}{
The number of steps that we want to move.
}
}
\value{
\item{ H }{ The Hilbert curve matrix after n steps }
}
\examples{
H0 = CreateHCF( grap = FALSE)
H = hilbert.curve( H0, 3)

## The function is currently defined as
function (H, nsteps) 
{
    for (i in 1:nsteps) {
        H = NextStep(H)
    }
    class(H) = c("Hilbert", class(H))
    return(H)
  }
}

