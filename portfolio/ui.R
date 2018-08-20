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
shinyUI(
    fluidPage(
        titlePanel("Portfolio do aluno - Everton Correa - FIAP"),
        
        navlistPanel(
            "Portfolio",
            tabPanel("Basics",
                   includeHTML("basics.nb.html")
            ),
            tabPanel("Datasets",
                   includeHTML("datasets.nb.html")
            )
        )
    )
)
