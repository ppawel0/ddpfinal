library(shiny)

# Define UI for application that draws a histogram
ui<-

  fluidPage(
  
  # Application title
  titlePanel("y = a*sin(b*x)"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
      sliderInput("a",
                  "value of a:",
                  min = 1,
                  max = 50,
                  value = 30),
      sliderInput("b",
                  "value of b:",
                  min = 0.01,
                  max = 10,
                  value = 5),
      sliderInput("t2",
                  "value of x:",
                  min = 1,
                  max = 50,
                  value = 30)
      
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot")
    )
  )
)