plot.Hilbert <-
function( x,... ){
    plot(  x[ ,1], x[ ,2], type = "l", pch=19, cex=0.5, ylim = c(0,1),  xlim =c(0,1), ylab=character(1),xlab=character(1),axes=FALSE)
    #box()
  }
