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
        titlePanel("Portfolio do aluno"),
        
        navlistPanel(
            "Portfolio",
            tabPanel("Basics",
                   includeHTML("basics.nb.html")
            ),
            tabPanel("Datasets",
                   includeHTML("datasets.nb.html")
            ),
            tabPanel("Datasets (pt.2)",
                   includeHTML("datasets2.nb.html")
            ),
            tabPanel("Plots",
                   includeHTML("plots.nb.html")
            ),
            tabPanel("Plot dinâmico",
                     sidebarLayout(
                            sidebarPanel(
                               sliderInput("month",
                                           "Month:",
                                           min = 5,
                                           max = 9,
                                           value = 5)
                            ),
                            mainPanel(
                                titlePanel("Temperaturas no mês"),
                                plotOutput("monthData")
                            )
                          )
            )
        )
    )
)
