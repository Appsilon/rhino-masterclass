box::use(
  shiny[bootstrapPage, div, moduleServer, NS, renderUI, tags, uiOutput],
)
box::use(
  app/logic/const,
  app/view/favorites,
  app/view/hello,
)

#' @export
ui <- function(id) {
  ns <- NS(id)
  bootstrapPage(
    hello$ui(ns("hello")),
    favorites$ui(ns("fruits"), category = "fruits", choices = const$fruits),
    favorites$ui(ns("vegetables"), category = "vegetables", choices = const$vegetables)
  )
}

#' @export
server <- function(id) {
  moduleServer(id, function(input, output, session) {
    hello$server("hello")
    favorites$server("fruits", choices = const$fruits)
    favorites$server("vegetables", choices = const$vegetables)
  })
}
