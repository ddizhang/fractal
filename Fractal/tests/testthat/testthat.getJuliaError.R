library(Fractal)
context("test the error in getJulia")

test_that("There should be an error:", {
  mandel = matrix( c( 1, 1, 3, 4), nrow = 2, ncol = 2)
  expect_error( getJulia( mandel ), "input should be a /'Mandelbrot/' object" )
  
})