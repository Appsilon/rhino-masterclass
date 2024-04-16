box::use(
  shiny,
)

choices <- c("one", "two", "three", "four", "five")[2:sample(2:5, 1)]

#' @export
ui <- function(id) {
  ns <- shiny$NS(id)
  shiny$fluidPage(
    shiny$titlePanel("Rhino App"),
    shiny$textInput(ns("name"), "What is your name?"),
    shiny$textOutput(ns("greeting")),
    shiny$checkboxGroupInput(ns("choices"), "Check all:", choices),
    shiny$textOutput(ns("done"))
  )
}

#' @export
server <- function(id) {
  shiny$moduleServer(id, function(input, output, session) {
    output$greeting <- shiny$renderText(paste0("Hello ", shiny$req(input$name), "!"))
    output$done <- shiny$renderText({
      shiny$req(identical(input$choices, choices))
      "Well done!"
    })
  })
}
