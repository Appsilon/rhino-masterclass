```r
box::use(
  shiny,
  shiny.fluent[...],
)

#' @export
ui = function(id) {
  ns <- shiny$NS(id)
  shiny$tagList(
    ColorPicker.shinyInput(ns("color"), value="#0000FF"),
    shiny$verbatimTextOutput(ns("text")))
}

#' @export
server <- function(id) {
  shiny$moduleServer(id, function(input, output, session) {
    output$text <- shiny$renderText({
      paste("Color:", input$color)
    })
  })
}
```

```r
library(shiny)
library(shiny.fluent)

ui <- div(
  Calendar.shinyInput("date"),
  verbatimTextOutput("text"),
)

server <- function(input, output, session) {
  output$text <- renderText({
    paste("Date:", input$date)
  })
}

shinyApp(ui = ui, server = server)
```
