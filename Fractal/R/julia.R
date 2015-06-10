julia = function(constant, len = 4, pix = 400, center = 0, maxItr = 50, radius = 4)
{
    result = .C("julia", as.integer(pix), as.double(Re(center)), as.double(Im(center)),
    as.double(len), as.double(Re(constant)), as.double(Im(constant)),
    as.integer(numeric(pix^2)), as.integer(maxItr), as.double(radius))[[7]]
    #return the matrix
    julia = list( matrix = matrix(result, pix, pix), center = center, constant = constant,
    maxItr = maxItr, escapeRadius = radius, plotLength = len)
    class(julia) = c("Julia", class(julia))
    julia
}