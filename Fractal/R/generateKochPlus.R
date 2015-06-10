generateKochPlus = function(x1, x2, y1, y2, itr, ptn)
{
    if (itr < 1)
    return( c(x2, y2))
    
    else
    {
        pts = genPts(x1, x2, y1, y2, ptn)
        curvePts = NULL
        for ( i in 1: (nrow(pts) - 1))
        curvePts = rbind(curvePts,
        generateKochPlus(pts[i,1], pts[i+1, 1], pts[i,2], pts[i+1,2],
        itr - 1, ptn))
    }
    curvePts
}