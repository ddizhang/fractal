H.img <-
function( H, nsteps ){
    plot(  H[ ,1], H[ ,2], type = "l", pch=19, cex=0.5, ylim = c(0,1),  xlim =c(0,1), ylab=character(1),xlab=character(1),axes=FALSE)
    box()
    
    for( i in 1:nsteps ){
      H = hilbert.curve( H, 1)
      plot(  H[ ,1], H[ ,2], type = "l", pch=19, cex=0.5, ylim = c(0,1),  xlim =c(0,1), ylab=character(1),xlab=character(1),axes=FALSE)
      box()
    }
  }
