library(shiny)

if (!require(utils)){
    install.packages(utils) 
} 
library(utils) #this library contains an implementation of the Levenshtein distance in the adist() function

shinyServer(
    function(input, output) {
        
        output$inputText1 <- renderPrint({input$inputText1})
        output$inputText2 <- renderPrint({input$inputText2})
 
        output$distance <- renderText({
            d <- adist(input$inputText1, input$inputText2, ignore.case=input$ignoreCase, counts=TRUE)
            line1=paste0(d[1], " transformation(s)")
            line21=paste0("(Insertions: ",attr(d,"counts")[1])
            line22=paste0(", Deletions: ",attr(d,"counts")[2])
            line23=paste0(", Substitutions: ",attr(d,"counts")[3],")")
            line2=paste0(line21,line22,line23)
            text = paste(line1,line2, sep="\n")
            text
            })
    }
)