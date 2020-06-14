#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Calories Burned"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
       sliderInput("days",
                   "Number of days per week you exercise:",
                   min = 1,
                   max = 7,
                   value = 3),
    
       sliderInput("time",
                   "Average time exercised per day (min):",
                   min = 1,
                   max = 120,
                   value = 30),
       
       radioButtons("calories",
                   "Select exercise:",
                   list("Running","Walking","Cycling") )
       
   ),
    
    
    # Show a plot of the generated distribution
    mainPanel(
       h2("You will burn this many calories this week:"),
       textOutput("outputCalories")
    )
  )
))
