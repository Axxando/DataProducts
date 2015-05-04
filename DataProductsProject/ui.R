library(shiny)

shinyUI(
    fluidPage(
        # Application title
        headerPanel("Online Levenshtein distance calculator"),
        sidebarPanel(
            p(strong('Introduction/Documentation')),
            p(strong('The Levenshtein distance is the minimal number of insertions, deletions and substitutions needed to transform one string into another. It\'s a measure of "dissimilarity" of two texts.')),
            p('To try it out just enter a start word (e.g. "Hello" in English) and an end word (e.g. "Hallo" in German) and hit the submit button.'),
            br(),
            textInput('inputText1', 'Please enter text #1', value = "Hello"),
            textInput('inputText2', 'Please enter text #2', value = "Hallo"),
            checkboxInput('ignoreCase', 'Ignore case? (Should "HELLO" and "hello" be considered the same?)', value = TRUE),
            submitButton('Submit')
        ),
        mainPanel(
            h3('Results'),
            p('Your submitted text #1'),
            verbatimTextOutput("inputText1"),
            p('Your submitted text #2'),
            verbatimTextOutput("inputText2"),
            h4('The Levenshtein distance between these texts is '),
            verbatimTextOutput("distance"),
            br(),
            br(),
            br(),
            br(),
            p('This is the Course Project of Andreas von Ballmoos for Coursera/JHU\'s "Developing Data Products" in May 2015 '),
            br(),
            p('Find out more about this algorithm on Wikipedia: '),
            a('http://en.wikipedia.org/wiki/Levenshtein_distance', href='http://en.wikipedia.org/wiki/Levenshtein_distance')
            
        )
    )
)