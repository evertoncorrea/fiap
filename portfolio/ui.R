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
            tabPanel("Painel 1",
                   includeHTML("nbtest.nb.html")
            ),
            tabPanel("Painel 2",
                   h3("Página 2"),
                   includeMarkdown("nbtest.Rmd")
            )
        )
    )
)
