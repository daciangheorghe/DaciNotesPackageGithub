#' Converts Fahrenheit to Celsius
#'
#' This function converts input temperatures in Fahrenheit to Celsius.
#' @param temp_F The temperature in Fahrenheit.
#' @return The temperature in Celsius.
#' @export
#' @examples
#' fahrenheit_to_kelvin(32)

Iza4 <- function(a){
  a <- c("ha! Dommerik!")
  
  par(mar = c(0,0,0,0))
  plot(c(0, 1), c(0, 1), ann = F, bty = 'n', type = 'n', xaxt = 'n', yaxt = 'n')
  text(x = 0.5, y = 0.5, paste(a), 
     cex = 1.6, col = "black")
  par(mar = c(5, 4, 4, 2) + 0.1)

}