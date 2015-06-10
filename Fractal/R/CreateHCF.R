CreateHCF <-
function( grap = TRUE, type = "classical"){
    if( grap ){
      plot.new()
      box()
      print("please click 4 point:")
      H =  locator( 4, type="o" )
      H = matrix( c( H$x, H$y), ncol = 2 )
    }else{
      if( type == "classical" ){
        #classical Hilbert Curve
        H = matrix( c( 1/4, 1/4,
                       1/4, 3/4,
                       3/4, 3/4,
                       3/4, 1/4 ), byrow = TRUE, nrow = 4, ncol = 2)
        colnames( H ) =c( "row", "col" )
      }else{
        H = matrix( rep( 0, 2*4 ), nrow = 4, ncol = 2)
        H[ 1, ] = c( 1/4, 1/4 )
        H[ 4, ] = c( 3/4, 1/4 )
        H[ 2, 1 ] = runif( 1, 0, 1/2 )
        H[ 2, 2 ] = runif( 1, 1/2, 1 )
        H[ 3, 1 ] =  runif( 1, 1/2, 1)
        H[ 3, 2 ] =  runif( 1, 1/2, 1 )
      }
    }
      
    class( H ) = c( "Hilbert", class(H))
    return( H )
  }
