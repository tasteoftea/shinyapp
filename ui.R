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
  titlePanel("Predict Iris Sepal Length"),
  sidebarLayout(
    sidebarPanel(
      numericInput("SepalWidth", "Sepal Width(input number between 2 and 5)",
                   value=0, min = 2, max = 5),
      numericInput("PetalLength", "Petal Length(input number between 1 and 7)",
                   value=0, min = 1, max = 7),
      numericInput("PetalWidth", "Sepal Length(input number between 0 and 3)",
                   value=0, min = 0, max = 3)
    ), 
    mainPanel(
      h1("Sepal Length:"),
      textOutput("text"),
      h1("How to Use"),
      p("This app predict Sepal Length using the other parameter, Sepal Width, Petal Length, Petal Width."),
      p("If you input above 3 parameter appropriately, then predicted Sepal Length will come out.")      
      
    )
    
  )
))
