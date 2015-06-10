trans <-
function(x, y, alpha, a, b){
  x1 = x*cos(alpha)-y*sin(alpha)+a
  y1 = x*sin(alpha)+y*cos(alpha)+b
  return(c(x1, y1))
}
