# Task 1

* Initialize a Rhino app in `task1` directory.
* Enable automatic reloading.
* Run the app.
* Edit the displayed message.
* Copy over `main.R`.
* Install the missing dependencies and run the app.
* Lint, format, fix remaining lint.
* Copy over `app.R` and set `legacy_entrypoint: app_dir`.
* Move code to `main.R` and set `legacy_entrypoint: source`.
* Use box and set `legacy_entrypoint: box_top_level`.
* Make it a Shiny module and remove `legacy_entrypoint`.

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
