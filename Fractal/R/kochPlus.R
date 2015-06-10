kochPlus = function(x1, x2, y1, y2, itr, ptn)
{
    kochPtr = generateKochPlus(x1, x2, y1, y2, itr, ptn)
    kochPtr = data.frame(x = c(x1, kochPtr[,1]), y = c(y1, kochPtr[,2]), stringsAsFactors = FALSE)
    koch = list(curve = kochPtr, iteration = itr)
    class(koch) = c("KochPlusCurve", class(koch))
    return(koch)
}

