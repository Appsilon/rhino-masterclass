box::use(
  DT[DTOutput, renderDT],
  shiny,
)

#' @export
ui <- function(id) {
  ns <- shiny$NS(id)
  DTOutput(ns("table"))
}

#' @export
server <- function(id, favorites) {
  shiny$moduleServer(id, function(input, output, session) {
    output$table <- renderDT(favorites())
  })
}
