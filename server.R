
library(shiny)

digits <- function(x) {
  if(length(x) > 1 ) {
    lapply(x, digits)
  } else {
    n <- nchar(x)
    rev( x %/% 10^seq(0, length.out=n) %% 10 )
  }
}

shinyServer(function(input, output) {
   
  output$inputValue <- renderPrint({input$number})
  output$calculation <- renderPrint({sum(digits(input$number))})
  
})
