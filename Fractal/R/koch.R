koch = function(x1, x2, y1, y2, itr)
{
    pts = matrix(nrow = 5, ncol = 2)
    pts[1,] = c(0, 0); pts[5,] = c(1, 0)
    pts[2,] = c(1/3,0); pts[4,] = c(2/3, 0)
    pts[3,] = c(0.5, 1/3*sqrt(3)/2)
    pts = data.frame(pts); names(pts) = c("x", "y")
    ptn = modKochPattern(pts)
    kochPlus(x1, x2, y1, y2, itr, ptn)
}
