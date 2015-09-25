# server.R

BMI <- function(height, weight) weight / height^2

shinyServer(
  function(input, output) {
    
      output$measurements <- renderText({
          paste("You have entered",
                input$weight, if(input$radio==1) "lb" else "kg","and",
                input$height, if(input$radio==1) "in" else "m", "as your measurements.")
      })
      
      output$BMI <- renderText({
        BMI(input$height, input$weight) * if(input$radio==1) 703 else 1
      })
      
      output$cat <- renderText({
        paste("Your measurements put you in the",
        if((BMI(input$height, input$weight) * if(input$radio==1) 703 else 1)<18.5)
        "underweight" else
            if((BMI(input$height, input$weight) * if(input$radio==1) 703 else 1)<24.9) "normal weight" else
            if((BMI(input$height, input$weight) * if(input$radio==1) 703 else 1)<29.9) "overweight" else
              "obese",
        "category."
        )
        })
  }
)