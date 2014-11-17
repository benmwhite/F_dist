library(shiny)
library(ggplot2)
shinyServer(function(input, output) {
  output$distPlot <- renderPlot({
    x <- seq(from = 0, to = 10, by = 0.05)
    y <- df(x, input$deg_f1, input$deg_f2)
    crit <- qf(input$alpha, input$deg_f1, input$deg_f2, lower.tail = FALSE)
    qplot(x, y, geom = "line", xlim = c(0, 10),
          ylim = c(0, 0.8),
          xlab = "F", ylab = "density") + 
      geom_vline(xintercept = crit, color = "red") +
      theme_minimal() 
  })
})


