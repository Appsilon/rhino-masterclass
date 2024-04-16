box::use(
  datasets[iris],
  DT[datatable, DTOutput, JS, renderDT],
  shiny = shiny[tags],
)

iris_table <- datatable(
  data = iris[90:109, ],
  options = list(
    columnDefs = list(
      list(targets = 5, render = JS("App.shortString"))
    )
  )
)

#' @export
ui <- function(id) {
  ns <- shiny$NS(id)
  shiny$fluidPage(
    tags$h1("Hello"),
    tags$button("Say Hello!", onclick = "App.message('Hello!')"),
    tags$h1("Iris table"),
    iris_table
  )
}

#' @export
server <- function(id) {
  shiny$moduleServer(id, function(input, output, session) {

  })
}
