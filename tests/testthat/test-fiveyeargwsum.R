context("fiveyeargwsum tests")

wd <- getwd()
setwd(dir = tempdir())

context("testing fiveyeargwsum")
test_that("fiveyeargwsum examples work",{
  library(jsonlite)
  library(gsplot)
  library(lubridate)
  
  data <- fromJSON(system.file('extdata','fiveyeargwsum','fiveyeargwsum-example.json', package = 'repgen'))
  expect_is(fiveyeargwsum(data, 'Author Name'), 'character')

  data <- fromJSON(system.file('extdata','fiveyeargwsum','fiveyeargwsum-no-min-max.json', package = 'repgen'))
  expect_is(fiveyeargwsum(data, 'Author Name'), 'character')
})

setwd(dir = wd)
