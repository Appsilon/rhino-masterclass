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
        # ?
      ),
      shiny$mainPanel(
        # Step 9:
        # ?
      ),
      position = "right"
    )
  )
}

#' @export
server <- function(id) {
  shiny$moduleServer(id, function(input, output, session) {
    # Step 9:
    # ?
  })
}
