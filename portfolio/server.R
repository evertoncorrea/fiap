#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(dplyr)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
    
    reactive({ filter(airquality, Month == input$month) %>% 
        select(c(Temp)) }) -> airquality_filtered 
    
    
    output$monthData <- renderPlot({
    
        barplot(airquality_filtered()$Temp)
        
    })
  
})
