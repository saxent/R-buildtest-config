library(assertthat)
x <- 1
# assert_that() generates errors, so can't be usefully run in
# examples
validate_that(is.numeric(x))
validate_that(is.character(x))
validate_that(length(x) == 3)
validate_that(is.dir("asdf"))
