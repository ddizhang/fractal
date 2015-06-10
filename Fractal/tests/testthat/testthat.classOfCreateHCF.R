library(Fractal)
context("test the class of object created by CreateHCF")

test_that("There should be an error:", {
  expect_is(CreateHCF( grap = FALSE), "Hilbert" )
  
})