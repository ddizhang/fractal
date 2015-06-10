getPattern <-
function()
{
  plot(c(0,1), c(0,0), xlim=c(0, 1), ylim=c(-0.5,0.5), type = "l")
  pts = data.frame(x = c(0, numeric(49)), y = c(0, numeric(49)) )
  print("click to choose points, press finish to stop.")
  i = 2
  while(1)
  {
    temp = locator(1)
    if (length(temp) == 0) break;
    pts[i,1] = temp$x; pts[i,2] = temp$y
    lines(c(pts$x[i-1], pts$x[i]), c(pts$y[i-1], pts$y[i]))
    i = i + 1
  }
  pts = pts[1:i, ]
  pts[i,1] = 1; pts[i,2] = 0
  pts
}
