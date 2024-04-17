# Task 2

### Step 1

* Use [`renv::restore()`](https://rstudio.github.io/renv/reference/restore.html)
to install the necessary dependencies.
* Enable devmode and run the app.

### Step 2

* Take a look at `app/view/hello.R`.
* Add `hello$ui(ns("hello"))` to the UI in `main.R`.
* Call `hello$server("hello")` in the server in `main.R`.
* See if the app displayes "Hello" text.

**Remember:**
In the UI, the ID must be wrapped in `ns()`,
but in the server the namespace is applied automatically.
Learn more in
[Modularizing Shiny app code](https://shiny.posit.co/r/articles/improve/modules/)

### Step 3

* Open `app/view/hello.R`.
* Add a
[`textInput`](https://shiny.posit.co/r/reference/shiny/latest/textinput) with label "What is your name?".
* See if the input appears in the app.

### Step 4

* Add a [`textOutput`](https://shiny.posit.co/r/reference/shiny/latest/textoutput)
to the module UI.
* Use [`renderText`](https://shiny.posit.co/r/reference/shiny/latest/renderprint) to greet the user with their name.
* Type "Rhino" into the field and check if "Hello Rhino!" appears.

### Step 5

* Import the `logic/const` and `view/favorites` modules in `main.R`.
* Add the `favorites` module to the app.
Use `category = "fruits"` and `choices = const$fruits`.

### Step 6

Add another instance of the `favorites` module.
Use `category = "vegetables"` and `choices = const$vegetables` this time.

### Step 7

* Add a [`checkboxGroupInput`](https://shiny.posit.co/r/reference/shiny/latest/checkboxgroupinput)
to the UI of the favorites module.
* Use the module parameters to define `choices` and a nice `label`.

### Step 8

* Copy over the files from `IMAGES` directory to `app/static/img`.
* Fill in the missing part the in `images()` function.
You need to translate image `name` to path with `/static/` prefix.
* Use [`uiOutput()`](https://shiny.posit.co/r/reference/shiny/latest/htmloutput)
and [`renderUI()`](https://shiny.posit.co/r/reference/shiny/latest/renderui)
to render the `images()` based on user's selection.

### Step 9

* Define the `app/view/reverse` module.
It should let the user type some text
and display it with words in reverse order.
* Fill in and use the `reverse_words()` function from `app/logic/reverse`.
* Add the module to the app.
