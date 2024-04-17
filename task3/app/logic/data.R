box::use(
  dplyr,
)
box::use(
  app/logic/db[pool],
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
  dplyr$tbl(pool, "favorites") |>
    dplyr$filter(.data$group == .env$group) |>
    dplyr$collect()
}

#' @export
filter_favorites <- function(favorites, min_age) {
  # Step 7:
  favorites |>
    dplyr$filter(age >= min_age)
}
