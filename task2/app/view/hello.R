box::use(
  shiny,
)

#' @export
ui <- function(id) {
  ns <- shiny$NS(id)
  shiny$div(
    shiny$h1("Hello"),
    shiny$textInput(ns("name"), "What is your name?"),
    shiny$textOutput(ns("message"))
  )
}

#' @export
server <- function(id) {
  shiny$moduleServer(id, function(input, output, session) {
    output$message <- shiny$renderText({
      paste0("Hello ", shiny::req(input$name), "!")
    })
  })
}
