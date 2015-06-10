pin.xy <-
function(pin){
  n = length(pin)
  x = pin[[1]][[1]]
  y = pin[[1]][[2]]
  for(i in 2:n){
    x = rbind(x, pin[[i]][[1]])
    y = rbind(y, pin[[i]][[2]])
  }
  return(cbind(x, y))
}
