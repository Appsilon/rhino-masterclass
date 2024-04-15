fruits <- c("apples", "bananas", "cherries")
vegetables <- c("cucumbers", "onions", "potatoes", "tomatoes")

favorites <- data.frame(
  group = c(rep(1, 25), rep(2, 25), rep(3, 25), rep(4, 25)),
  age = sample(20:70, 100, replace = TRUE),
  fruit = sample(fruits, 100, replace = TRUE),
  vegetable = sample(vegetables, 100, replace = TRUE)
)

con <- DBI::dbConnect(RSQLite::SQLite(), "dev.sqlite3")
DBI::dbWriteTable(con, "favorites", favorites, overwrite = TRUE)
DBI::dbReadTable(con, "favorites")
DBI::dbDisconnect(con)
