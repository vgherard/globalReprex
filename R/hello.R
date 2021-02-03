#' Hello object
#'
#' Hello object
#'
#' @param object an object
#' @return a string
#'
#' @export
hello <- function(object) {
        greet <- "Ciao"
        UseMethod("hello", object)
}

#' @export
hello.character <- function(object)
        paste(greet, object)
