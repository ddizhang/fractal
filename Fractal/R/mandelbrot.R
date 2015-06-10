mandelbrot <-
function(pix = 400, len = 4, center = 0, maxItr = 50, radius = 4)
{
  result = .C("mandelbrot", as.integer(pix), 
              as.double(Re(center)), as.double(Im(center)), as.double(len), 
              as.integer(numeric(pix^2)), as.integer(maxItr), as.double(radius))[[5]]
  
  mandelbrot = list( matrix = matrix(result, pix, pix), center = center, 
              maxItr = maxItr, escapeRadius = radius, plotLength = len)
  class(mandelbrot) = c("Mandelbrot", class(mandelbrot))
  mandelbrot
}
