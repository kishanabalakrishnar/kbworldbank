#' @title Converting World Bank Dataset into Long Format
#' @description converts the world bank dataset into a long dataset format 
#' @param df dataset var character string
#' @return y
#' @examples
#' expit(2)
#' @export

converting_wblong <- function(df, var){
  df |> 
    pivot_longer(cols = starts_with("X"),
  names_to = "year",
  names_prefix = "X",
  values_to = var) |> mutate(year = as.numeric(year)) |> 
    select(iso, year, all_of(var))
}