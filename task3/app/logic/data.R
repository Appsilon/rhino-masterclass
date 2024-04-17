box::use(
  dplyr,
)
box::use(
  app/logic/db[db_pool],
)

#' @export
fetch_groups <- function() {
  dplyr$tbl(db_pool, "favorites") |>
    dplyr$distinct(group) |>
    dplyr$pull(group)
}

#' @export
fetch_favorites <- function(group) {
  dplyr$tbl(db_pool, "favorites") |>
    dplyr$filter(.data$group == .env$group) |>
    dplyr$collect()
}

#' @export
filter_favorites <- function(favorites, min_age) {
  favorites |>
    dplyr$filter(age >= min_age)
}
