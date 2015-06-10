plot.BarnsleyFern <-
function(x, ...)
{
  plot(x$points[,1], x$points[,2], pch=17, cex=.3, col="darkgreen", axes=F, ann=F)
}
