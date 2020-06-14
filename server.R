#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
output$outputCalories <- renderText({ 
    
  switch(input$calories,
           "Running" = 13*input$time*input$days,
           "Walking" = 8*input$time*input$days,
           "Cycling" = 10*input$time*input$days)
  })

})
