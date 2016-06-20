
## shinyserver 
# prediction function is defined outside of the shinyServer function

txt = function (b){
    if (b == 1) {
        "Celsius"
    }
    else {
        "Fahrenheit"
    }    
}

txt2 = function (b){
    if (b == 2) {
        "Celsius"
    }
    else {
        "Fahrenheit"
    }    
}

convertion  <- function(f1,rdx) {
    if (f1 == 2) {
        round(1.8*rdx +32 ,1)  
    } else {
        round((rdx-32)/1.8,1)  
    }
}

shinyServer(
    function(input, output) {
        output$inputValue <- renderPrint({input$tmp})
        output$text2     <- renderText({txt2(input$rdx)})
        output$prediction <- renderPrint({convertion(input$rdx, input$tmp)})  
        output$text1     <- renderText({txt(input$rdx)})
}
 )

