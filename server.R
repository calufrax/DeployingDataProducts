#The Mathemagician - Server Side
#A silly Shiny program
#by C Griffiths

library(shiny)

shinyServer(
  function(input, output) {  
  output$resultValue <- renderText({
      if (input$id2=="Addition"){
        return(as.character(input$id1+input$id3))
      }
      else if (input$id2=="Subtraction"){
        return(as.character(input$id1-input$id3))
      }
      else if (input$id2=="Multiplication"){
        return(as.character(input$id1*input$id3))
      }
      else if (input$id2=="Secret Function"){
        return(as.character(input$id1^input$id3))
      }
      else{
        return(as.character("I have no clue..."))
       }
      })
  })
