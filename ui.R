#load the Shiny library
library(shiny)

#provide a slider bar of fahrenheit temperature - the bar is ranged for min and max temperatures seen on Earth
#       Output the results in two columns
#               the results are in two columns
#               The first column is using the actual conversion formula 
#               and the second column is using an estimate, that is easier to do mentally
#               1st row of column is the heading
#               2nd row of the column is the temperature converted from Fahrenheit to Celsius
#               3rd row is a description of the two methods to convert temperature
#               4th row is the formula used on the two methods

shinyUI(fluidPage(
        titlePanel("Temperature Conversion"),
        
        sidebarLayout(
                sidebarPanel(
                        # Decimal interval with step value
                        sliderInput("temp", "Fahrenheit Temperature:", 
                                    min = -130, max = 135, value = 72.0, step= 5)
                        ),
                mainPanel(
                        h1("Celsius Temperatures"),
                        tableOutput("values")
                )
        )
))