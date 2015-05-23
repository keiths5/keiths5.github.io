library(shiny)

# This function is the conversion function.  The actual conversion is:
#   Celsius Temperature = (Fahrenheit Temperature - 32) * 5 / 9
#   Celsius Temperature (Est) = (Fahrenheit Temperature - 30) / 2
#   Provide documentation at the end of the tables for the user
convert <- function(temp) {
        convertDF <- data.frame(ActualTemp = c(paste((temp - 32) * 5 / 9),'Uses actual conversion formula of:','Ctemp = (Ftemp - 32) * 5 / 9'),
                   EstimatedTemp = c(paste((temp-30)/2),'Uses estimation formula of:','Ctemp = (Ftemp - 30) / 2'))
}


shinyServer(
        function(input, output) {
                output$values <- renderTable(convert(input$temp))
        }
)