box::use(
  shiny,
)

#' @export
ui <- function(id) {
  ns <- shiny$NS(id)
  shiny$fluidPage(
    shiny$titlePanel("Rhino App"),
  )
}

#' @export
server <- function(id) {
  shiny$moduleServer(id, function(input, output, session) {

  })
}
