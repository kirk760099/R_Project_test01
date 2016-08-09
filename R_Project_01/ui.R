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
  titlePanel("Kirk R Project Test"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
       sliderInput("bins",
                   "Number of bins:",
                   min = 1,
                   max = 50,
                   value = 30),
       numericInput("test",
                    "Observations",
                    10,
                    min=1,
                    max=10),
       textInput("text", 
                 "Caption:", 
                 "Data Summary")
    
       ),
    
    
    # Show a plot of the generated distribution
    mainPanel(
       plotOutput("distPlot"),
       plotOutput("testPlot"),
       textOutput("text1")
    )
  )
))
