library(shiny)
shinyUI(fluidPage(
  titlePanel("Visualizing the F Distribution"),
  sidebarLayout(
    sidebarPanel(
      sliderInput("deg_f1",
                  "degrees of freedom from first sample:",
                  min = 1,
                  max = 20,
                  value = 10,
                  step = 1),
      sliderInput("deg_f2",
                  "degrees of freedom from second sample:",
                  min = 1,
                  max = 20,
                  value = 10,
                  step = 1),
      sliderInput("alpha",
                  "significance level:",
                  min = 0.01,
                  max = 0.2,
                  value = 0.05,
                  step = 0.01)
    ),
    mainPanel(
      plotOutput("distPlot")
    )
  )
))