library(shiny)

shinyUI(pageWithSidebar(
  titlePanel("Simple Length conversion widget"),
  
  sidebarPanel(
    helpText(p(h5("This application converts the length from Centimeters to Inches  and vice versa.
                    (Note: 1 inch = 2,54 cm / 1 centimeter = 0.39 in.)"))),            
    br(),            
    radioButtons("type", label = p(h5("Choose conversion mode")),
                 choices = list("Convert Centimeters to Inches" = 1, 
                                "Convert Inches to Centimeters" = 2),selected = 1),
    br(),            
    sliderInput("slider_length",
                label = p(h5("Choose the length you want to convert")),
                min = 2, max = 100, value = 1)
    ),
  
  
  mainPanel(
    tabsetPanel(
      tabPanel("Conversion",
               p(h5("You say:")),
               textOutput("text_input_units"),
               textOutput("text_input_length"),
               br(),
               p(h5("I say:")),
               textOutput("text_output_length"),
               textOutput("text_output_units")
      ),
      tabPanel("Documentation",
               p(h4("Simple length Converter:")),
               br(),
               helpText("This application converts the length from Centimeters(cm) to Inches(in) and vice versa."),
               HTML("The formulae for the conversion are:
                    <br> <br>
                    <b> in = 2.54*cm  and  cm = in*0.3937. </b>
                    <br> <br>
                    You can enter any value between 2 and 100 using the slider for both cm. and in. <br>
                    <br>How to use:
                    Select one of the conversion modes and enter the length using the slider, the application converts the selected length and displays the converted units <br>
                    ")                
               )
               )
               )      
               ))