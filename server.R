library(shiny)

daysTillDeath <- function(name, weaponOfChoice) {
        
        x <- nchar(name)
        y <- if(weaponOfChoice == "Shoe") 354 else
                if(weaponOfChoice == "Pineapple") 1500 else
                        if(weaponOfChoice == "Wig") 81 else
                                if(weaponOfChoice == "Knife") 2
        
        days <- sqrt(x) * y
        days
        
}

shinyServer(
        function(input, output) {
                
                output$text1 <- renderText({
                        paste("You will survive", daysTillDeath(input$name, 
                                                                input$weapon), "days")
                })
        }
        )