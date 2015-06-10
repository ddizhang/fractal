modKochPattern = function(pts)
{
    pts$y[pts$y <= 0.01 & pts$y >= -0.01] = 0   #those intended to be zero
    l = numeric(nrow(pts) - 2); alpha = numeric(nrow(pts) - 2)
    for (i in 2: (nrow(pts) - 1))
    {
        l[i - 1] = sqrt(pts[i,1]^2 + pts[i,2]^2)  #sqrt(x^2 + y^2) distance from origin to the point
        alpha[i - 1] = atan( pts[i,2] / pts[i,1] )   # the angle between a side and the horizontal axis
    }
    ptn = data.frame( l = l, alpha = alpha)
    ptn
}  #Given a data frame of x, y coordinates of all points of a pattern, modify it to the form that Koch functions can use.
