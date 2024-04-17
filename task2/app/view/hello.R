box::use(
  shiny,
)

#' @export
ui <- function(id) {
  ns <- shiny$NS(id)
  shiny$div(
    shiny$h1("Hello"),

    # Step 3:
    shiny$textInput(ns("name"), "What is your name?"),

    # Step 4:
    shiny$textOutput(ns("message"))
  )
}

#' @export
server <- function(id) {
  shiny$moduleServer(id, function(input, output, session) {
    # Step 4:
    output$message <- shiny$renderText({
      paste0("Hello ", shiny::req(input$name), "!")
    })
  })
}
