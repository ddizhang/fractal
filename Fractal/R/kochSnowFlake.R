kochSnowFlake = function(a, itr)
{
  snow = NULL
  snow[[1]] = koch(-a/2, a/2, 0, 0,  itr)
  snow[[2]] = koch(a/2, 0, 0, -sqrt(3)/2*a,  itr)
  snow[[3]] = koch(0, -a/2, -sqrt(3)/2*a, 0, itr)
  class(snow) = c("KochSnowFlake", class(snow))
  snow
}
