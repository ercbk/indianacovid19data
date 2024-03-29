#' Get file path to .csv files
#'
#' indianacovid19data has csv file types for all its datasets in the `inst/extdata`
#' directory. This function makes them easy to access.
#'
#' @details The csv file for [hosp_react_tab] doesn't include the list columns.
#'
#' @param name Name of file in quotes with extension. If `NULL`, the available files will be listed.
#'
#' @source The function is similar to [palmerpenguins::path_to_file()] with a few edits.
#'
#' @export
#' @examples
#' path_to_file()
#' path_to_file("hosp_msas_line.csv")
#' head(read.csv(path_to_file("hosp_msas_line.csv")))

path_to_file <- function(name = NULL) {
  if (is.null(name)) {
    dir(system.file("extdata", package = "indianacovid19data"))
  } else {
    system.file("extdata", name, package = "indianacovid19data", mustWork = TRUE)
  }
}
