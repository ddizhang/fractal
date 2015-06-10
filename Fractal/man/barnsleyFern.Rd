\name{barnsleyFern}
\alias{barnsleyFern}
\title{
A function create fractal of barnsleyFern
}
\description{
This function could simulate the barnsleyFern.
The iteration function:
x= ax + by + e 
y = cx + dy + f
}
\usage{
barnsleyFern(niter = 150000, prob = c(0.01, 0.07, 0.07, 0.85), a = c(0, 0.2, -0.15, 0.85), b = c(0, -0.26, 0.28, 0.04), c1 = c(0, 0.23, 0.26, -0.04), d = c(0.16, 0.22, 0.24, 0.85), e = c(0, 0, 0, 0), f = c(0, 1.6, 0.44, 1.6))
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{niter}{
The number of steps
}
  \item{prob}{
The problability of generating portion
}
  \item{a}{
paremeter
}
  \item{b}{
parameter
}
  \item{c1}{
parameter
}
  \item{d}{
parameter
}
  \item{e}{
parameter
}
  \item{f}{
paremeter
}
}

\examples{
##barnsleyFern()

## The function is currently defined as
function (niter = 150000, prob = c(0.01, 0.07, 0.07, 0.85), a = c(0, 
    0.2, -0.15, 0.85), b = c(0, -0.26, 0.28, 0.04), c1 = c(0, 
    0.23, 0.26, -0.04), d = c(0.16, 0.22, 0.24, 0.85), e = c(0, 
    0, 0, 0), f = c(0, 1.6, 0.44, 1.6)) 
{
    k = length(prob)
    kind = sample(1:k, niter, repl = TRUE, prob)
    x = rep(0, niter)
    y = rep(0, niter)
    x[1] = 0
    y[1] = 0
    for (i in 1:niter) {
        t = kind[i]
        x[i + 1] <- a[t] * x[i] + b[t] * y[i] + e[t]
        y[i + 1] <- c1[t] * x[i] + d[t] * y[i] + f[t]
    }
    BarnsleyFern = list(points = data.frame(x = x, y = y), parameters = data.frame(a = a, 
        b = b, c = c1, d = d, e = e, f = f))
    class(BarnsleyFern) = c("BarnsleyFern", class(BarnsleyFern))
    BarnsleyFern
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
