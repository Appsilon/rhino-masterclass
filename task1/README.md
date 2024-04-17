# Task 1

### Step 1

Use [`rhino::init()`](https://appsilon.github.io/rhino/reference/init.html)
to create a new Rhino app in `task1` directory.

### Step 2

* Enable automatic reloading with
[`shiny::devmode()`](https://shiny.posit.co/r/reference/shiny/latest/devmode.html).
* Run the app with
[`shiny::runApp()`](https://shiny.posit.co/r/reference/shiny/latest/runapp).
* Edit the displayed message and see how the app automatically reloads.

### Step 3

Copy over the following code to `app/main.R`:
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

Install the missing dependencies with
[`rhino::pkg_install()`](https://appsilon.github.io/rhino/reference/dependencies.html)
and run the app.

### Step 4

* Lint the project with
[`rhino::lint_r()`](https://appsilon.github.io/rhino/reference/lint_r.html).
* Format the code with
[`rhino::format_r()`](https://appsilon.github.io/rhino/reference/format_r.html).
* Lint the project again and fix remaining errors.

### Step 5

Rename `main.R` to `app.R` and copy over the following code:
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

Set [`legacy_entrypoint: app_dir`](https://appsilon.github.io/rhino/reference/app.html#legacy-entrypoint)
in `rhino.yml` and rerun the app.

### Step 6

* Rename `app/app.R` back to `app/main.R`.
* Remove the `shinyApp(ui = ui, server = server)` line.
* Set `legacy_entrypoint: source` and rerun the app.

### Step 7

* Replace `library()` calls with `box::use()`.
* Set `legacy_entrypoint: box_top_level` and rerun the app.

### Step 8

* Modify the `ui` and `server` to make them into a
[Shiny module](https://shiny.posit.co/r/articles/improve/modules/).
* Remove the `legacy_entrypoint` setting and rerun the app.
