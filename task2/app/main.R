box::use(
  shiny,
)
box::use(
  # Step 5:
  # ?

  app/view/hello,

  # Step 9:
  # ?
)

#' @export
ui <- function(id) {
  ns <- shiny$NS(id)
  shiny$fluidPage(
    # Step 2:
    # ?

    # Step 5:
    # ?

    # Step 6:
    # ?

    # Step 9:
    # ?
  )
}

#' @export
server <- function(id) {
  shiny$moduleServer(id, function(input, output, session) {
    # Step 2:
    # ?

    # Step 5:
    # ?

    # Step 6:
    # ?

    # Step 9:
    # ?
  })
}
