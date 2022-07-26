#' Make a standard league-play tibble
#'
#' Given a league-play data frame from {engsoccer}, returns a tibble with
#' standardised column-names and types, e.g. `date` is a `Date`
#'
#' @param data_engsoc  obtained from {engsoccerdata}
#' @param country `character` scalar, specifies the league
#'
#' @return a tibble with columns `country`, `date`, `season`, `tier`, `home`,
#'    `visitor`, `goals_home`, `goals_visitor`
#' @export
#'
#' @examples
#' uss_make_matches(engsoccerdata::spain, "Spain")

`%>%` <- magrittr::`%>%`

uss_make_matches <- function(data_engsoc, country) {
  result <-
    data_engsoc %>%
    tibble::as_tibble() %>%
    dplyr::transmute(
      country = as.character(country),
      tier = as.factor(tier),
      season = as.integer(Season),
      date = as.Date(Date),
      home = as.character(home),
      visitor = as.character(visitor),
      goals_home = as.integer(hgoal),
      goals_visitor = as.integer(vgoal)
    )
  result
}
