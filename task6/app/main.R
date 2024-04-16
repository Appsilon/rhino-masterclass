box::use(
  datasets[iris],
  DT[datatable, DTOutput, JS, renderDT],
  shiny = shiny[tags],
)

iris_table <- datatable(
  data = iris[90:109, ],
  options = list(
    columnDefs = list(
      list(targets = 5, render = JS("App.shortColumn"))
    )
  )
)

#' @export
ui <- function(id) {
  ns <- shiny$NS(id)
  shiny$fluidPage(
    tags$h1("Hello"),
    tags$button("Say Hello", onclick = "App.sayHello('Rhino')"),
    tags$h1("Iris table"),
    iris_table,
    tags$h1("Custom hello"),
    shiny$textInput(ns("name"), "What is your name?"),
    shiny$actionButton(ns("hello"), "Say Hello")
  )
}

#' @export
server <- function(id) {
  shiny$moduleServer(id, function(input, output, session) {
    shiny$observe({
      session$sendCustomMessage("sayHello", input$name)
    }) |> shiny$bindEvent(input$hello)
  })
}
