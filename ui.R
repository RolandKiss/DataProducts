shinyUI(
  pageWithSidebar(
    headerPanel("Net Present Value Calculator - 5 years"),
    sidebarPanel(
      numericInput('INV','Initial Investment in $ CAD 000s',200,min=0,max=1000,step=10),
      numericInput('oneyr','Cash Flow Generated in Year1 in $ CAD 000s',100,min=0,max=2000,step=10),
      numericInput('twoyr','Cash Flow Generated in Year2 in $ CAD 000s',100,min=0,max=2000,step=10),
      numericInput('threeyr','Cash Flow Generated in Year3 in $ CAD 000s',100,min=0,max=2000,step=10),
      numericInput('fouryr','Cash Flow Generated in Year4 in $ CAD 000s',100,min=0,max=2000,step=10),
      numericInput('fiveyr','Cash Flow Generated in Year5 in $ CAD 000s',100,min=0,max=2000,step=10),
      numericInput('RATE','Discount rate in %',5,min=0,max=20,step=1),
      submitButton('Submit')
    ),
    mainPanel(
      h3('Net Present Value Result'),
      h4('Initial Investment Value Entered'),
      verbatimTextOutput('oINV'),
      h4('Year 1 Cash-flow Entered'),
      verbatimTextOutput('ooneyr'),
      h4('Year 2 Cash-flow Entered'),
      verbatimTextOutput('otwoyr'),
      h4('Year 3 Cash-flow Entered'),
      verbatimTextOutput('othreeyr'),
      h4('Year 4 Cash-flow Entered'),
      verbatimTextOutput('ofouryr'),
      h4('Year 5 Cash-flow Entered'),
      verbatimTextOutput('ofiveyr'),
      h4('Discount Rate Entered'),
      verbatimTextOutput('oRATE'),
      h4('The Net Present Value of Your Project'),
      verbatimTextOutput('oprediction')
    )
  )
)