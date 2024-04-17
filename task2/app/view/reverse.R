# Step 9:
box::use(
  shiny,
)
box::use(
  app/logic/reverse[reverse_words],
)

#' @export
ui <- function(id) {
  ns <- shiny$NS(id)
  shiny$div(
    shiny$h1("Reverse"),
    shiny$textAreaInput(ns("text"), "Provide some text to reverse words in"),
    shiny$textOutput(ns("reversed"))
  )
}

#' @export
server <- function(id) {
  shiny$moduleServer(id, function(input, output, session) {
    output$reversed <- shiny$renderText({
      reverse_words(shiny$req(input$text))
    })
  })
}
