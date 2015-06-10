#iteration link function
iterfunc = function( x, y, a , b, c){
  nextx = y - sign(x)*sqrt(abs( b*x - c) )
  nexty = a - x
  return( c( nextx, nexty) )
}