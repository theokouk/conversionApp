library(shiny)


shinyServer(
  function(input, output) {
    
    
    
    output$text_input_length <- renderText({
      input_length()
    })      
    
                 
    input_length <- reactive({
      
      if(input$type == 1)
        input_length <- paste(input$slider_length, "Centimeters")    
      else
        input_length <- paste(input$slider_length, "Inches")    
      
    })
    
               
    converted <-  reactive({
      if(input$type == 1)
        converted <- paste(cmton(input$slider_length), "Inches")    
      else
        converted <- paste(ntocm(input$slider_length), "Centimeters")    
    })             
    
    output$text_output_length <- renderText({
      converted()
    })                
    
                    
    cmton <- function(cm)
    {
      cm*0.39
    }
                  
    ntocm <- function(n)
    {
      n*2.54
    }
    
  }
)