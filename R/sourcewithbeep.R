

sourcewithbeep  <- function( ) {

   currentfile  <- rstudioapi::getActiveDocumentContext()

   currentfilepath  <- currentfile$path

   if( currentfilepath == '') {

      write.table(currentfile$contents,file = '~/.active-rstudio-document2', row.names = F, col.names = F, quote = F)
      source('~/.active-rstudio-document2', echo=T)
      file.remove('~/.active-rstudio-document2')

    } else {

       source(currentfilepath, echo = T)

    }

   beepr::beep()

}



