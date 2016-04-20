shinyUI(fluidPage(
    fluidRow(
        column(2),
        column(8, titlePanel("US Unemployment Trends")),
        column(2)
    ),
    fluidRow(
        column(2),
        column(8, tags$div(
            tags$p(
                "This is a geographic visualization of US unemployment data from 1999-2015.  Interact with the map by using the input widgets below.  Dragging the slider changes the year, and the 'Age Group' or 'Race' menus let you segment by those features."
            )
        )),
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
    ),
    fluidRow(
        column(2),
        column(8, tags$div(
            tags$a(
                href = "http://twitter.com/stvauyeung", "by: @stvauyeung"
            ),
            tags$br(),
            tags$a(
                href = "https://github.com/stvauyeung/us-unemployment-map", "source code"
            ),
            tags$br()
        )),
        column(2)
    )
))