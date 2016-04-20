shinyUI(fluidPage(
    fluidRow(
        column(2),
        column(8, titlePanel("US Unemployment Trends")),
        column(2)
    ),
    fluidRow(
        column(2),
        column(8, htmlOutput("map")),
        column(2)
    ),
    fluidRow(
        column(2),
        column(8, sliderInput("yearSlide", 
                              "Select year", 
                              1999, 2015, 2008, 
                              step = 1)),
        column(2)
    ),
    fluidRow(
        column(2),
        column(4, selectInput("ageInput", 
                              "Age Group", 
                              c("Total", "16 to 19", "20 to 24", 
                                "25 to 34", "35 to 44", "45 to 54", 
                                "55 to 64", "65 or older")
                              )
        ),
        column(4, selectInput("raceInput", 
                              "Race", 
                              c("Total", "Asian", "Black",
                                "Hispanic", "White")
                              )
        ),
        column(2)
    )
))