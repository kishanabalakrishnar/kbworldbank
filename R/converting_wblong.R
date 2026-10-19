#' @title Converting World Bank Data into Long Format
#' @description Converts a World Bank dataset from the armed conflict 
#' paper into a long dataset format 
#' @param df A dataframe containing the World Bank dataset in wide format
#' @param var A character string specifying the mortality rate for that dataset
#' @return A dataframe containing the World Bank dataset in long format 
#' @examples converting_wblong(maternal_mortalitydf, "maternal_mortality")
#' 
#' @export

converting_wblong <- function(df, var){
  df |> 
    pivot_longer(cols = starts_with("X"),
  names_to = "year",
  names_prefix = "X",
  values_to = var) |> mutate(year = as.numeric(year)) |> 
    select(iso, year, all_of(var))
}