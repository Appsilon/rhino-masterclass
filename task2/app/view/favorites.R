box::use(
  shiny,
)

images <- function(filenames) {
  lapply(filenames, function(name) {
    shiny$img(src = paste0("/static/img/", name, ".jpg"))
  })
}

#' @export
ui <- function(id, category, choices) {
  ns <- shiny$NS(id)
  shiny$div(
    shiny$h1(paste("Favorite", category)),
    shiny$checkboxGroupInput(
      inputId = ns("favorites"),
      label = paste("Pick your favorite", category),
      choices = choices
    ),
    shiny$uiOutput(ns("images"))
  )
}

#' @export
server <- function(id, choices) {
  shiny$moduleServer(id, function(input, output, session) {
    output$images <- shiny$renderUI({
      images(input$favorites)
    })
  })
}
