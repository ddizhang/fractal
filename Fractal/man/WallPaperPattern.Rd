\name{WallPaperPattern}
\alias{WallPaperPattern}
\title{
The function create pattern for Wall paper
}
\description{
Generate a pattern for wallpaper.
}
\usage{
WallPaperPattern(npoint = 1e+05, x0 = 1, y0 = 1, a = 1, b = 4, c = 60)
}
\arguments{
  \item{npoint}{
The number of points
}
  \item{x0}{
The begining x point
}
  \item{y0}{
The begining y point
}
  \item{a}{
parameter for iteration function
}
  \item{b}{
parameter for iteration function
}
  \item{c}{
parameter for iteration function
}
}
\examples{
wallpaper = WallPaperPattern( )

## The function is currently defined as
function (npoint = 1e+05, x0 = 1, y0 = 1, a = 1, b = 4, c = 60) 
{
    x = c(x0, rep(NA, npoint - 1))
    y = c(y0, rep(NA, npoint - 1))
    cor <- rep(0, npoint)
    for (i in 2:npoint) {
        temp = iterfunc(x[i - 1], y[i - 1], a = 1, b = 4, c = 60)
        x[i] = temp[1]
        y[i] = temp[2]
        cor[i] <- round(sqrt((x[i] - x[i - 1])^2 + (y[i] - y[i - 
            1])^2), 0)
    }
    n.c <- length(unique(cor))
    cores <- heat.colors(n.c)
    plot(x, y, pch = ".", col = cores[cor])
  }
}
