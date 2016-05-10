#' Source with Beep
#'
#' @description source an R script and beep when you're done
#'
#' @param filename the file location that you wish to source. If the current file is already saved, it will use the filename. If not, or if you're on the console, it'll ask you for a filename.
#' @param beep an integer, passed to beepr::beep to set which beep should be used. Defaults to 1.
#'
#' @return
#' @export
#'
sourcewithbeep  <- function( filename = "", beep=1 ) {

   if( rstudioapi::getActiveDocumentContext()$path != "" ) {
          filename  <- rstudioapi::getActiveDocumentContext()$path
   } else {
      filename  <- readline("unquoted file location: ")
   }

   source(filename, echo = T)
   beepr::beep( beep )

}

