library(shiny)
library(htmltools)
htmlTemplate("index.html",
             button = actionButton(inputId = "teste", "Busca"),
             slider = sliderInput(inputId = "TESTE", "teste",min=0 ,max=10, 1, step=0.2),
             textinpt = textInput("teste","teste","Entre com a busca"),
             tab1 = DT::dataTableOutput("tab1"),
             seletor = selectInput("seletor", "selecione", choices=unique(colnames(mtcars)))
) 



