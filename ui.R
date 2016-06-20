#
# ui.R  # shiny5,
#



shinyUI(
    pageWithSidebar(
        # Application title
        headerPanel(" Celsius/Fahrenheit temperature conversion"),
        sidebarPanel(
            numericInput('tmp', 'degrees', 30, 
                         min = -100, max = 1200, step = 1),
            radioButtons("rdx", label = h3("Convert to"),
                         choices = list("Celsius" = 1, "Fahrenheit" = 2),
                                        selected = 2),
            h5("Press submit to update"),
            submitButton('Submit'),
            h5(""),
            h5("Refence", a("Wikipedia", href="https://en.wikipedia.org/wiki/Fahrenheit"))
        ),
        
        mainPanel(
            h3('Result'),
            h4('You entered'),
            verbatimTextOutput("inputValue"),
            textOutput("text2"),
            h4('are equivalent to  '),
            verbatimTextOutput("prediction"),
            textOutput("text1") 
            
        )
    )
)

