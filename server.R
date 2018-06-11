library(shiny)
library(ggplot2)
# Define server logic required to draw a histogram
server<-
  function(input, output) {
  
  output$distPlot <- renderPlot({
    # generate bins based on input$bins from ui.R
    t=seq(0,input$t2,0.01)
    y=input$a*sin(input$b*t)
    # draw the histogram with the specified number of bins
    qplot(t,y,geom="path", xlab="time", ylab="Sine wave")
  })
  }


# Run the application 
