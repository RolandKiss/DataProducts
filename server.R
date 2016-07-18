NPVcalc<-function(INV,oneyr,twoyr,threeyr,fouryr,fiveyr,RATE) oneyr/(1+RATE/100)+twoyr/(1+RATE/100)^2+threeyr/(1+RATE/100)^3+fouryr/(1+RATE/100)^4+fiveyr/(1+RATE/100)^5-INV

shinyServer(
  function(input,output) {
    output$oINV<-renderText({input$INV})
    output$ooneyr<-renderText({input$oneyr})
    output$otwoyr<-renderText({input$twoyr})
    output$othreeyr<-renderText({input$threeyr})
    output$ofouryr<-renderText({input$fouryr})
    output$ofiveyr<-renderText({input$fiveyr})
    output$oRATE<-renderText({input$RATE})
    output$oprediction<-renderPrint({NPVcalc(input$INV,input$oneyr,input$twoyr,input$threeyr,input$fouryr,input$fiveyr,input$RATE)})
  }
)