#The Mathemagician - User Interface
#A silly Shiny program
#by C Griffiths

library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Input values"),
  sidebarPanel(
    h4("Select first value"),
    sliderInput('id1','First value',0,min = -20,max=20,step=0.5),
    h4("Select operation"),
    radioButtons('id2',"Function type",
                       c("Addition",
                         "Subtraction",
                         "Multiplication",
                         "Secret Function")),
    h4("Up/down arrow or enter second value"),
    numericInput('id3','Second number',0,min = -20,max=20,step=0.5),
    h4("Finally, press this button"),
    submitButton('Compute')
    ),
  
  mainPanel(
    headerPanel("Output results"),
    h3('Output'),
    verbatimTextOutput('resultValue')

    )
  )
)