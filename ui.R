# ui.R
shinyUI(
  fluidPage(
    titlePanel("BMI Calculator"),
  
    tabsetPanel(
      tabPanel("Calculator",
       sidebarLayout(
         sidebarPanel(
           helpText("Enter your information to calculate your BMI.")
          
           ,numericInput("weight", label="Enter your weight",
                      value = 100, min = 75, max = 400, step = 1)
          
           ,radioButtons("radio", label = "Select your measurement units",
                       choices = list("Metric - kg, m" = 0,
                                      "Imperical - lb, in" = 1), 
                       selected = 0)
           
           ,numericInput("height", label="Enter your height",
                       value = 72, min = 48, max = 96, step = 1)
         )
          ,mainPanel(
            h3("Your BMI is:")
            ,h4(textOutput("BMI"))
            ,br()
            ,textOutput("cat")
            ,br()
            ,textOutput("measurements"))
          
        )
      )

    ,tabPanel("Documentation",
               fluidRow(
                  column(12,
                      helpText("This application calculates a person's BMI based
                               on their provided height and weight, either in kilgrams 
                               and meters or in pounds and inches.")
                      ,h5(strong("Equation Used"))
                      ,p("For the metric system, the calculation is simple:")
                      ,code("weight/(height)^2")
                      ,br()
                      ,br()
                      ,p("For the imperical system, a conversion factor of 703 
                          must be used:")
                      ,code("weight/(height)^2*703")
                      ,br()
                      ,br()
                      ,p("This equation was found at the websit for the Centers 
                         for Disease Control and Prevention:")
                      ,div("http://www.cdc.gov/healthyweight/assessing/bmi/
                        adult_bmi/#Interpreted",style="color:blue")
                    ) 
                )
      )
    )
  )
)