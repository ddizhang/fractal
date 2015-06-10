\name{SiepinskyGasked}
\alias{SiepinskyGasked}
\title{
A function generate SiepinskyGasked
}
\description{
Simulate SiepinskyGasked
}
\usage{
SiepinskyGasked()
}

\examples{
##SiepinskyGasked()
## The function is currently defined as
function () 
{
    X11(width = 6, height = 6)
    plot(0, 0, xlim = c(0, 1), ylim = c(0, 1), col = "white")
    A = c(0, 0)
    B = c(1, 0)
    C = c(0.5, 0.8)
    D = sample(0:1000, 2)/1000
    for (i in 1:10000) {
        Corner = sample(1:3, 1)
        if (Corner == 1) {
            CornerS = A
        }
        if (Corner == 2) {
            CornerS = B
        }
        if (Corner == 3) {
            CornerS = C
        }
        D = (D + CornerS)/2
        points(D[1], D[2], pch = ".", cex = 1)
    }
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
