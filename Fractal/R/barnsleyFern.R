barnsleyFern <-
function( niter = 150000, prob=c(.01, .07, .07, .85), 
                         a = c(0, 0.2, -0.15, 0.85), b = c(0, -0.26, 0.28, 0.04),
                         c1 = c(0, 0.23, 0.26, -0.04), d = c(0.16, 0.22, 0.24, 0.85),
                         e = c(0, 0, 0, 0), f = c(0, 1.6, 0.44, 1.6) )
{
  k = length(prob)
  kind = sample(1:k, niter, replace=TRUE, prob )
  
  x = rep( 0, niter )
  y = rep( 0, niter )
  
  x[1] = 0
  y[1] = 0
  
  for (i in 1:niter) {
    t = kind[i]
    x[i + 1] <- a[t] * x[i] + b[t] * y[i] + e[t] 
    y[i + 1] <- c1[t] * x[i] + d[t] * y[i] + f[t]
  }
  BarnsleyFern = list(points = data.frame(x = x, y = y),
                      parameters = data.frame(a = a, b = b, c = c1, d = d, e = e, f = f))
  class(BarnsleyFern) = c("BarnsleyFern", class(BarnsleyFern))
  BarnsleyFern
}
