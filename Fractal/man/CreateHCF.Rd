\name{CreateHCF}
\alias{CreateHCF}
\title{
The function create the origin Hilbert Curve matrix
}
\description{
Create an 4 by 2 matrix, which represent the orignial points' matrix of Hilbert curve.
}
\usage{
CreateHCF(grap = TRUE, type = "classical")
}
\arguments{
  \item{grap}{
If set to TRUE, user could interactively grap the original point from window. If set to FALSE, user could use the classical original points or set the original hilbert curve dataset matrix
}
  \item{type}{
If set to TRUE and the grap is also TRUE, we will get the classical original dataset matrix. If set to FALSE, it will randomly create two points which satisfy some conditions.
}
}
\details{
When the grap = FALSE, type = FALSE, the function will fix the first point and last point and randomly create the middle of them with the conditions that the second point is located at the upper left part of window and the the third point is located at the upper right part of the window.
}
\value{
\item{ H }{ A 4 by 2 matrix which represents the original points of Hilbert Curve
}
}
\examples{
H = CreateHCF( grap = FALSE, type = FALSE)

## The function is currently defined as
function (grap = TRUE, type = "classical") 
{
    if (grap) {
        plot.new()
        box()
        print("please click 4 point:")
        H = locator(4, type = "o")
        H = matrix(c(H$x, H$y), ncol = 2)
    }
    else {
        if (type == "classical") {
            H = matrix(c(1/4, 1/4, 1/4, 3/4, 3/4, 3/4, 3/4, 1/4), 
                byrow = TRUE, nrow = 4, ncol = 2)
            colnames(H) = c("row", "col")
        }
        else {
            H = matrix(rep(0, 2 * 4), nrow = 4, ncol = 2)
            H[1, ] = c(1/4, 1/4)
            H[4, ] = c(3/4, 1/4)
            H[2, 1] = runif(1, 0, 1/2)
            H[2, 2] = runif(1, 1/2, 1)
            H[3, 1] = runif(1, 1/2, 1)
            H[3, 2] = runif(1, 1/2, 1)
        }
    }
    class(H) = c("Hilbert", class(H))
    return(H)
  }
}
