#' Source a file, temporarily using its directory as the local directory
#'
#' @export
#'
source_local <- function(file, ...){
  current_wd <- getwd()
  setwd(dirname(file))
  source(file, ...)
  setwd(current_wd)
}
