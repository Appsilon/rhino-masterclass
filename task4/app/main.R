box::use(
  shiny,
  shiny[tags],
)

#' @export
ui <- function(id) {
  ns <- shiny$NS(id)
  shiny$fluidPage(
    shiny$div(
      # Step 1:
      style = "display: flex; justify-content: center; align-items: center; height: 100vh;",
      tags$h1("Hello!")
    )
  )
}

#' @export
server <- function(id) {
  shiny$moduleServer(id, function(input, output, session) {

  })
}
