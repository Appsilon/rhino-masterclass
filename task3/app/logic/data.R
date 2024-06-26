box::use(
  dplyr,
)
box::use(
  app/logic/db,
)

#' @export
fetch_groups <- function() {
  dplyr$tbl(pool, "favorites") |>
    dplyr$distinct(group) |>
    dplyr$pull(group)
}

#' @export
fetch_favorites <- function(group) {
  # Step 7:
  # ?
}

#' @export
filter_favorites <- function(favorites, min_age) {
  # Step 7:
  # ?
}
