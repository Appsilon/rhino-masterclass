box::use(
  config,
  pool[dbPool, poolClose],
  rhino[log],
  RSQLite[SQLite],
)

create_pool <- function(conf) {
  driver <- switch(conf$db_driver,
    sqlite = SQLite(),
    stop()
  )
  args <- c(list(driver), conf$db_args)

  # Step 5:
  # ?

  do.call(dbPool, args)
}

close_pool <- function(pool) {
  if (pool$valid) {
    log$info("Closing DB pool")
    poolClose(pool)
  }
}

# Step 4:
# ?

# Step 6:
# ?
