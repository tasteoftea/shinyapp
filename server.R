#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
data(iris)
# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  

  model <- lm(Sepal.Length~Sepal.Width + Petal.Length + Petal.Width, data = iris)
  outputpred <- reactive({
  
    input <- data.frame(Sepal.Width = input$SepalWidth,
                        Petal.Length = input$PetalLength,
                        Petal.Width = input$PetalWidth)
    predict(model, input)
  })
  output$text <- renderText({
                              as.character(round(outputpred(),2))
                            })
})