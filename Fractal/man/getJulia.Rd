\name{getJulia}
\alias{getJulia}
\title{
Interactively Generate a Julia Set from a Point in Mandelbrot Set
}
\description{
Interactively Generate a Julia Set from a Point in Mandelbrot Set. 
Julia set and Mandelbrot set are both generated from iteration function zi+1 = f(z) = zi^2 + c.  For Mandelbrot set, each point corresponds to a c in f(z), and z0 is set to be zero. For Julia set, each point corresponds to an initial value z0, given c.  For every given point in Mandelbrot set, we can generate a Julia set with c equals to that point.
}


\usage{
getJulia(mandel, len = 4, pix = 400, center = 0, maxItr = 50, radius = 4)
}
\arguments{
  \item{mandel}{
a Mandelbrot object
}
  \item{len}{
length of the plot
}
  \item{pix}{
Number of pixels to equally space division of one side if the square region.
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
returns a Julia object.
}

\examples{

##m = mandelbrot()
##j = getJulia(m)
##plot(j)
}
