box::use(
  shiny,
)
box::use(
  app/logic/data,
)

#' @export
ui <- function(id) {
  ns <- shiny$NS(id)
  shiny$sliderInput(ns("min_age"), "Minimum age", min = 20, max = 70, value = 20)
}

#' @export
server <- function(id) {
  shiny$moduleServer(id, function(input, output, session) {
    favorites <- data$fetch_favorites()
    shiny$reactive(data$filter_favorites(favorites, min_age = input$min_age))
  })
}
