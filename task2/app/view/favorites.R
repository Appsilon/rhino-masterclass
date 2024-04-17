box::use(
  shiny,
)

images <- function(filenames) {
  lapply(filenames, function(name) {
    shiny$img(
      # Step 8:
      src = paste0("/static/img/", name, ".jpg")
    )
  })
}

#' @export
ui <- function(id, category, choices) {
  ns <- shiny$NS(id)
  shiny$div(
    shiny$h1(paste("Favorite", category)),

    # Step 7:
    shiny$checkboxGroupInput(
      inputId = ns("favorites"),
      label = paste("Pick your favorite", category),
      choices = choices
    ),

    # Step 8:
    shiny$uiOutput(ns("images"))
  )
}

#' @export
server <- function(id) {
  shiny$moduleServer(id, function(input, output, session) {
    # Step 8:
    output$images <- shiny$renderUI({
      images(input$favorites)
    })
  })
}
