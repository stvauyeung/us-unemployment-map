library(googleVis)

mapData <- read.csv("data/mapData.csv")

filterData <- function(mapData, year, age, race) {
    newData <- mapData[mapData$Year == year,]
    newData <- newData[newData$Age == age,]
    newData <- newData[newData$Race == race,]
    return(newData)
}

shinyServer(function(input, output) {
    yearInput <- reactive({input$yearSlide})
    ageInput <- reactive({input$ageInput})
    raceInput <- reactive({input$raceInput})
    
    gvisMap <- reactive({
        selectData <- filterData(mapData, yearInput(), ageInput(), raceInput())
        gvisOutput <- gvisGeoChart(selectData, "State", 
                                   "Unemployment.Rate", 
                                   options=list(region="US", 
                                            displayMode="regions", 
                                            resolution="provinces", 
                                            width=600, height=400))
    })

    output$map <- renderGvis({gvisMap()})
    output$year <- renderText({yearInput()})
    output$age <- renderText({ageInput()})
    output$race <- renderText({raceInput()})
})