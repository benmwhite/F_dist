library(shiny)
shinyUI(fluidPage(
  titlePanel("Visualizing the F Distribution"),
  sidebarLayout(
    sidebarPanel(
      sliderInput("deg_f1",
                  "degrees of freedom, first sample:",
                  min = 1,
                  max = 20,
                  value = 10,
                  step = 1),
      sliderInput("deg_f2",
                  "degrees of freedom, second sample:",
                  min = 1,
                  max = 20,
                  value = 10,
                  step = 1),
      sliderInput("alpha",
                  "significance level:",
                  min = 0.01,
                  max = 0.1,
                  value = 0.05,
                  step = 0.005),
      checkboxInput("tail", "Lower tail", FALSE)
    ),
    mainPanel(
      plotOutput("distPlot")
    )
  )
))