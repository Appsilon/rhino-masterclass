#' @export
reverse_words <- function(text) {
  words <- strsplit(text, "\\s+")[[1]]
  paste(rev(words), collapse = " ")
}
