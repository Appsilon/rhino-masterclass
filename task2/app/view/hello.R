box::use(
  shiny,
)

#' @export
ui <- function(id) {
  ns <- shiny$NS(id)
  shiny$div(
    shiny$h1("Hello")

    # Step 3:
    # ?

    # Step 4:
    # ?
  )
}

#' @export
server <- function(id) {
  shiny$moduleServer(id, function(input, output, session) {
    # Step 4:
    # ?
  })
}
