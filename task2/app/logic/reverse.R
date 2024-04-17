#' @export
reverse_words <- function(text) {
  # Step 9:
  words <- strsplit(text, "\\s+")[[1]]
  paste(rev(words), collapse = " ")
}
