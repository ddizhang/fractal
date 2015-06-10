hilbert.curve <-
function( H, nsteps ){
    for( i in 1:nsteps ){
      H = NextStep( H )
    }
    class( H ) = c( "Hilbert", class(H))
    return( H )
  }
