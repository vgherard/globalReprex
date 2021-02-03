
<!-- README.md is generated from README.Rmd. Please edit that file -->

# globalReprex

<!-- badges: start -->

<!-- badges: end -->

Example of R CMD check `No visible binding for global variable` NOTE
when defining a variable in a S3 generic and calling it in a method.

## Installation

Install with:

``` r
# install.packages("devtools")
devtools::install_github("vgherard/globalReprex")
```

## Example

The function `greet()` is an S3 generic defined by:

``` r
# greet <- function(object) {
#         greeting <- "hola"
#         UseMethod("greet", object)
# }
# 
# greet.character <- function(object)
#         paste(greeting, object)
```

This works as expected:

``` r
library(globalReprex)
greet("you")
```

    ## [1] "hola you"

However R CMD check gives the following NOTE:

  - greet.character: no visible binding for global variable ‘greeting’
    Undefined global functions or variables: greeting
