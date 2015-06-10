plot.KochPlusCurve = function(x, ...)
{
    kochplus = x
    k = kochplus$curve
    lowerLim = min(range(k$x)[1], range(k$y)[1])  #min of min
    upperLim = max(range(k$x)[2], range(k$y)[2])  #max of max
    plot(k$x, k$y, type = "l", xlim = c(lowerLim, upperLim), ylim = c(lowerLim, upperLim), ...)
}