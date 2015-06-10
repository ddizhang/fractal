
genPts = function(x1, x2, y1, y2, ptn)
{
    r = sqrt( (x1 - x2)^2 + (y1 - y2)^2 )
    pts = data.frame(x = numeric(nrow(ptn) + 2), y = numeric(nrow(ptn) + 2))
    pts[1, ] = c(x1, y1)
    
    for (i in 1:nrow(ptn))
    {
        tempx = x1 + ptn$l[i]*(x2 - x1)
        tempy = y1 + ptn$l[i]*(y2 - y1)
        newx = (tempx - x1) * cos(ptn$alpha[i]) - (tempy - y1) * sin(ptn$alpha[i]) + x1
        newy = (tempx - x1) * sin(ptn$alpha[i]) + (tempy - y1) * cos(ptn$alpha[i]) + y1
        pts[i + 1, ] = c(newx, newy)
    }
    pts[ nrow(ptn) + 2, ] = c(x2, y2)
    pts
}  #utilize a pattern in a given line