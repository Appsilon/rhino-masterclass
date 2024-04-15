box::use(
  shiny[bootstrapPage, div, moduleServer, NS, renderUI, tags, uiOutput],
)
box::use(
  app/view/hello,
)

#' @export
ui <- function(id) {
  ns <- NS(id)
  bootstrapPage(
    hello$ui(ns("hello"))
  )
}

#' @export
server <- function(id) {
  moduleServer(id, function(input, output, session) {
    hello$server("hello")
  })
}
