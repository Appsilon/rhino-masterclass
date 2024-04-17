box::use(
  config,
  pool[dbPool, poolClose],
  rhino[log],
  RSQLite[SQLite],
)

create_pool <- function() {
  conf <- config$get()
  driver <- switch(conf$db_driver,
    sqlite = SQLite(),
    stop()
  )
  args <- c(list(driver), conf$db_args)
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
