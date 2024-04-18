# Task 3

### Step 1

Run `renv::restore()` and `shiny::runApp()`.

### Step 2

Add the folling snippet to `config.yml`:
```yml
dev:
  db_driver: sqlite
  db_args:
    dbname: dev.sqlite3
```

* Run [`config::get()`](https://rstudio.github.io/config/reference/get.html).
* Compare with `config::get(config = "dev")`.

### Step 3

Create a `.Renviron` file with this content:
```
R_CONFIG_ACTIVE=dev
```

* Restart your R session.
* Try `config::get()` now.

### Step 4

* Open `app/logic/db.R`.
* Use the `create_pool()` function to define an exported `pool` object.
* Run `box::use(app/logic/db)` followed by `DBI::dbReadTable(db$pool, "favorites")`.

### Step 5

* Use `log$info()` to show a message when creating a DB pool.
* Run `box::reload(db)` and check if you get a message.

### Step 6

* Restart your R session and notice the warnings from pool.
* Add the following snippet to `db.R`:
```r
reg.finalizer(pool, close_pool, onexit = TRUE)
.on_unload <- function(ns) {
  close_pool(pool)
}
```
* Play with steps 4-6 and see that the warnings are gone.

### Step 7

* Fill in the `fetch_favorites()` and `filter_favorites()` functions in `app/logic/data.R`.
* Use `tbl()`, `filter()`, and `collect()`
from [dplyr](https://dplyr.tidyverse.org/reference/index.html).

### Step 8

Use the defined functions to fetch and filter the data
in the `app/view/filters` module.

### Step 9

* Add the `app/view/filters` module to the app.
* Display the returned data using the `app/view/table` module.
