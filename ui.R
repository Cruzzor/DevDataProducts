
library(shiny)

shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("Developing Data Products - A Shiny App"),
  
  # Sidebar with a slider input for number of bins
  sidebarPanel(
    numericInput('number', 'Enter a natural number between 0 and 1000 and press the submit button:', 0, min = 0, max = 1000, step = 1),
    submitButton('Submit')
  ),
  
  mainPanel(
    h3('Calculation result:'),
    h4('You entered:'),
    verbatimTextOutput('inputValue'),
    h4('The cross sum of your value is:'),
    verbatimTextOutput('calculation')
  )
))
