\name{mandelbrot}
\alias{mandelbrot}
\title{
Generate a Mandelbrot Set
}
\description{
Generate a Mandelbrot Set, given z0 = 0 in f(z) = z^2 + c
Julia set and Mandelbrot set are both generated from iteration function zi+1 = f(z) = zi^2 + c.  For Mandelbrot set, each point corresponds to a c in f(z), and z0 is set to be zero. For Julia set, each point corresponds to an initial value z0, given c.  For every given point in Mandelbrot set, we can generate a Julia set with c equals to that point.
}
\usage{
mandelbrot(pix = 400, len = 4, center = 0, maxItr = 50, radius = 4)
}
\arguments{
  \item{pix}{
Number of pixels to equally space division of one side if the square region.
}
  \item{len}{
Length of the square region
}
  \item{center}{
A complex number that determines the centre of the square region
}
  \item{maxItr}{
Largest iteration times when performing escape time algorithm.
}
  \item{radius}{
Escape Radius when performing escape time algorithm.
}
}

\value{
  \item{matrix }{Julia set matrix.}
  \item{center }{Central point of the matrix.}
  \item{plotLength }{Length of the square region.}
  \item{maxItr }{Largest iteration times when performing escape time algorithm.}
  \item{escapeRadius }{Escape Radius when performing escape time algorithm.}

}

\examples{
#m = mandelbrot()
#plot(m)
}
