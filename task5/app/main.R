box::use(
  shiny,
)

#' @export
ui <- function(id) {
  ns <- shiny$NS(id)
  shiny$fluidPage(
    shiny$titlePanel("Rhino App"),
    shiny$textInput(ns("name"), "What is your name?"),
    shiny$textOutput(ns("text"))
  )
}

#' @export
server <- function(id) {
  shiny$moduleServer(id, function(input, output, session) {
    output$text <- shiny$renderText(paste0("Hello ", shiny$req(input$name), "!"))
  })
}
