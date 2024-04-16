box::use(
  shiny,
  shiny[tags],
)

#' @export
ui <- function(id) {
  ns <- shiny$NS(id)
  shiny$bootstrapPage(
    tags$button("Say Hello!", onclick = "App.message('Hello!')"),
  )
}

#' @export
server <- function(id) {
  shiny$moduleServer(id, function(input, output, session) {

  })
}
