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
        # Step 9:
        filters$ui(ns("filters"))
      ),
      shiny$mainPanel(
        # Step 9:
        table$ui(ns("table"))
      ),
      position = "right"
    )
  )
}

#' @export
server <- function(id) {
  shiny$moduleServer(id, function(input, output, session) {
    # Step 9:
    favorites <- filters$server("filters")
    table$server("table", favorites)
  })
}
