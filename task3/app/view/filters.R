box::use(
  shiny,
)
box::use(
  app/logic/data,
)

#' @export
ui <- function(id) {
  ns <- shiny$NS(id)
  shiny$tagList(
    shiny$selectInput(ns("group"), "Group", choices = NULL),
    shiny$sliderInput(ns("min_age"), "Minimum age", min = 20, max = 70, value = 20)
  )
}

#' @export
server <- function(id) {
  shiny$moduleServer(id, function(input, output, session) {
    shiny$updateSelectInput(inputId = "group", choices = data$fetch_groups())

    favorites <- shiny$reactive({
      data$fetch_favorites(group = input$group)
    })
    filtered <- shiny$reactive({
      data$filter_favorites(favorites(), min_age = input$min_age)
    })

    filtered
  })
}
