\name{ArrowheadCurve}
\alias{ArrowheadCurve}
\title{
a function to realize Arrowhead Curve
}
\description{
Users are allowed to decide the number of dimensions of the Arrowhead Curve they want to generate and visualize them.
}
\usage{
ArrowheadCurve(iter)
}

\arguments{
  \item{iter}{the numbers of iterations}
}
\details{None}
\value{two vectors indicating the axis of the important points to graph the curve}
\references{See spt package in CRAN}
\examples{
Arr = ArrowheadCurve(3)

## The function is currently defined as
function (iter) 
{
    a1 = 2 * pi/3
    a3 = -2 * pi/3
    x = as.numeric(c(0, 1, 3, 4))
    y = as.numeric(c(0, sqrt(3), sqrt(3), 0))
    xy = cbind(x, y)
    if (iter == 1) {
        class(xy) = c("stc", class(xy))
        return(xy)
        break
    }
    for (j in 2:iter) {
        ind = seq(1:(length(xy)/2))
        pin1 = lapply(ind, function(i) {
            trans(xy[i, 1], xy[i, 2], a1, 4 * 2^(j - 1), 0)
        })
        pin2 = lapply(ind, function(i) {
            flip(xy[i, 1], xy[i, 2], 0, 3 * 2^(j - 1), 2^(j - 
                1) * sqrt(3))
        })
        pin3 = lapply(ind, function(i) {
            trans(xy[i, 1], xy[i, 2], a3, 2^(j - 1), 2^(j - 1) * 
                sqrt(3))
        })
        xy1 = pin.xy(pin1)
        xy2 = pin.xy(pin2)
        xy3 = pin.xy(pin3)
        xy = rbind(xy1, xy2, xy3)
        xy = cbind(rev(xy[, 1]), rev(xy[, 2]))
    }
    class(xy) = c("stc", class(xy))
    return(xy)
  }
}

\keyword{Fractal }

