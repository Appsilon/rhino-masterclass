box::use(
  shiny,
)
box::use(
  app/view/filters,
  app/view/table,
)

#' @export
ui <- function(id) {
  ns <- shiny$NS(id)
  shiny$fluidPage(
    shiny$titlePanel("Favorites"),
    shiny$sidebarLayout(
      shiny$sidebarPanel(
        filters$ui(ns("filters"))
      ),
      shiny$mainPanel(
        table$ui(ns("table"))
      ),
      position = "right"
    )
  )
}

#' @export
server <- function(id) {
  shiny$moduleServer(id, function(input, output, session) {
    favorites <- filters$server("filters")
    table$server("table", favorites)
  })
}
