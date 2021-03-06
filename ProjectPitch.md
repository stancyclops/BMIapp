Simple BMI Calculator
========================================================
author: stancyclops
date: 27 September 2015
transition: cube
font-family: 'Helvetica'

Motivation
========================================================

This application was built for the Coursera course **Developing Data Products**, done as part of the Data Science Specialization.

The concept was to build a simple BMI calculator, as calculated by the equation provided on the websit for Centers for Disease Control and Prevention.

Equation
========================================================

The equation used is at this website: http://www.cdc.gov/healthyweight/assessing/bmi/adult_bmi/

For metric measurements:

$$ weight/(height^2) $$

For imperical measurements, a conversion factor of 703 is used:

$$ weight/(height^2)*703 $$


Sample Calculation
========================================================


If we were to calculate a BMI by hand - say, someone who is 6'1" and weighs 175lb, we'd use the following equation:


```r
height <- (6*12)+1 #convert the feet into inches and add remaining inches
weight <- 175
BMI <- weight/height^2*703
BMI
```

```
[1] 23.08594
```

This app does the calculation automatically and informs the user of whether they are underweight, normal weight, overweight, or obese.

App Details
========================================================

To run this app, please go to https://stancyclops.shinyapps.io/Project1

**Enjoy!**

