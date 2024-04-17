box::use(
  shiny,
)

images <- function(filenames) {
  lapply(filenames, function(name) {
    shiny$img(
      # Step 8:
      # src = ?
    )
  })
}

#' @export
ui <- function(id, category, choices) {
  ns <- shiny$NS(id)
  shiny$div(
    shiny$h1(paste("Favorite", category))

    # Step 7:
    # ?

    # Step 8:
    # ?
  )
}

#' @export
server <- function(id) {
  shiny$moduleServer(id, function(input, output, session) {
    # Step 8:
    # ?
  })
}
