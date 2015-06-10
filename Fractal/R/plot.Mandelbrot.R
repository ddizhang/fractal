plot.Mandelbrot <-
function(x, ...)
{
  mat = x$matrix
  len = x$plotLength
  
  image(t(mat[nrow(mat):1, ]), col = rev(topo.colors(x$maxItr)), axes = FALSE)
  axis(1, at = seq(0, 1, by = 0.2), 
       labels = as.character(seq(Re(x$center) - len/2, Re(x$center) + len/2, length.out = 6)))
  axis(2, at = seq(0, 1, by = 0.2), 
       labels = as.character(seq(Re(x$center) - len/2, Re(x$center) + len/2, length.out = 6)))
  title("Mandelbrot Set")
}
