box::use(
  shiny,
)
box::use(
  # Step 5:
  app/logic/const,
  app/view/favorites,

  app/view/hello,

  # Step 9:
  app/view/reverse,
)

#' @export
ui <- function(id) {
  ns <- shiny$NS(id)
  shiny$fluidPage(
    # Step 2:
    hello$ui(ns("hello")),

    # Step 5:
    favorites$ui(ns("fruits"), category = "fruits", choices = const$fruits),

    # Step 6:
    favorites$ui(ns("vegetables"), category = "vegetables", choices = const$vegetables),

    # Step 9:
    reverse$ui(ns("reverse"))
  )
}

#' @export
server <- function(id) {
  shiny$moduleServer(id, function(input, output, session) {
    # Step 2:
    hello$server("hello")

    # Step 5:
    favorites$server("fruits")

    # Step 6:
    favorites$server("vegetables")

    # Step 9:
    reverse$server("reverse")
  })
}
