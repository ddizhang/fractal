plot.KochSnowFlake = function(x, ...)
{
    snow = x
  UpperLimX = max(sapply(1:3, function(t) max(snow[[t]]$curve$x)))
  LowerLimX = min(sapply(1:3, function(t) min(snow[[t]]$curve$x)))
  UpperLimY = max(sapply(1:3, function(t) max(snow[[t]]$curve$y)))
  LowerLimY = min(sapply(1:3, function(t) min(snow[[t]]$curve$y)))
  
  plot(0, 0, type = "n", xlim = c(LowerLimX, UpperLimX), ylim = c(LowerLimY, UpperLimY), xlab = "", ylab = "", ...)
  for (i in 1:3)
    lines(snow[[i]]$curve$x, snow[[i]]$curve$y)
}