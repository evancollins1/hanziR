#' Show stroke order animation of Chinese character
#'
#' This function generates the injectable HTML+CSS code to show the stroke
#' animation of the specified Chinese character. If preparing a markdown
#' document in RStudio, set code chunk arguments as follows:
#' results='asis', message=F
#'
#' @param hanzi A required character string of one Chinese character (e.g., "你"); no default
#' @param width A character string for width of figure (e.g., "50%" or "50px"); defaults to "100%"
#' @param align A character string for alignment of figure (i.e., "center" or "left"); defaults to "center"
#' @param background_color A character string for figure color in CSS format (i.e., color name, HEX value, RGB value, or RGBA value)
#' @return HTML+CSS code to generate stroke animation of specified Chinese character
#' @export
draw_animated_hanzi <- function(hanzi, width, align, background_color) {
  # Function to generate HTML+CSS code to show stroke animation of specified Chinese character
  # Arguments
  # hanzi: A character string of one Chinese character (e.g., "你"); no default
  # width: A character string for width of figure (e.g., "50%" or "50px"); defaults to "100%"
  # align: A character string for alignment of figure (i.e., "center" or "left"); defaults to "center"
  # background-color: A character string for figure color in CSS format (i.e., color name, HEX value, RGB value, or RGBA value)
  message("For markdown visuals, remember to set code chunk argument: {r, results='asis', message=F}")
  if(missing(hanzi)){
    stop("hanzi argument blank, i.e., no Chinese character input selected!")
  }
  if(length(utf8ToInt(hanzi))>1){
    stop("Only enter one Chinese character for hanzi argument!")
  }
  if(missing(width)){
    width = "100%"
  }
  if(missing(align)){
    align = "center"
  }
  if(align %in% c("center", "left")){
    align = align
  } else {
    align = "center"
  }
  if(missing(background_color)){
    background_color = "white"
  }
  return(cat(as.character(paste0("<", align, "><img src = 'https://raw.githubusercontent.com/skishore/makemeahanzi/master/svgs/", utf8ToInt(hanzi), ".svg' style = 'width:", width, "; background-color:", background_color, "; border-radius: 8%'></", align, ">"))))
}
