#' Hello object
#'
#' Hello object
#'
#' @param object an object
#' @return a string
#'
#' @export
greet <- function(object) {
        greeting <- "hola"
        UseMethod("greet", object)
}

#' @export
greet.character <- function(object)
        paste(greeting, object)
