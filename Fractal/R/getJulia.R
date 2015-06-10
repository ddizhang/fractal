getJulia <-
function(mandel, len = 4, pix = 400, center = 0, maxItr = 50, radius = 4)
{
  if (! ("Mandelbrot" %in% class(mandel)))
    stop("input should be a /'Mandelbrot/' object")
  
  plot(mandel)
  print("please click a point:")
  coord = locator(1)
  re = mandel$plotLength * coord$x + Re(mandel$center) - mandel$plotLength / 2
  im = mandel$plotLength * coord$y + Im(mandel$center) - mandel$plotLength / 2
  re = round(re, digits = 4)
  im = round(im, digits = 4)
  return(julia(constant =  re + im * (0+1i), pix = pix, len = len, center = center,
                       maxItr = 50, radius = 4))
}
