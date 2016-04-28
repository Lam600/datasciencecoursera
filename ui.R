shinyUI(
        
        fluidPage(
                column(8, offset = 2,
                       
                       h1("Zombie Apocolyps Survival Calculator",
                          align = "center"),
                       br(),
                       helpText("Oh god. The zombies are coming. Drop your name and pick a weapon.",
                                align = "center"),
                       br()
                       ),
                column(3, offset = 4,
                       textInput("name", label = strong("Please insert your name"),
                                 value = "", width = "100%")
                       ),
                column(3, offset = 4,
                       selectInput("weapon", label = strong("And your favorite weapon"),
                                   choices = list("Shoe" = "Shoe",
                                                  "Knife" = "Knife",
                                                  "Wig" = "Wig",
                                                  "Pineapple" = "Pineapple"))
                       ),
                column(6, offset = 5,
                       submitButton("Go!"),
                       br(),
                       br(),
                       br()
                        ),
                column(3, offset = 4,
                       textOutput("text1")
                       )
                
                )
        
        )