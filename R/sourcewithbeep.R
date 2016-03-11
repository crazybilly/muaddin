

sourcewithbeep  <- function( ) {

   currentfile  <- rstudioapi::getActiveDocumentContext()

   currentfilepath  <- currentfile$path

   if( currentfilepath == '') {

      write.table(currentfile$contents,file = '~/.active-rstudio-document', row.names = F, col.names = F, quote = F)
      source('~/.active-rstudio-document', echo=T)
      file.remove('~/.active-rstudio-document')

    } else {

       source(currentfilepath, echo = T)

    }

   beepr::beep()

}



