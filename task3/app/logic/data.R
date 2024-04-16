box::use(
  config,
  pool[dbPool, poolClose],
  rhino[log],
  RSQLite[SQLite],
)

create_pool <- function() {
  db <- config$get("db")
  driver <- switch(db$driver,
    sqlite = SQLite(),
    stop()
  )
  args <- c(list(driver), db$args)
  log$info("Creating DB pool")
  do.call(dbPool, args)
}

close_pool <- function(pool) {
  if (pool$valid) {
    log$info("Closing DB pool")
    poolClose(pool)
  }
}

#' @export
db_pool <- create_pool()

reg.finalizer(db_pool, close_pool, onexit = TRUE)
.on_unload <- function(ns) {
  close_pool(db_pool)
}
