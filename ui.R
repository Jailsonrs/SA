library(shiny)
library(htmltools)
options(spinner.size=1)
htmlTemplate("index.html",
             button = actionButton(inputId = "teste", "Busca"),
             slider = sliderInput(inputId = "TESTE", "teste",min=0 ,max=10, 1, step=0.2),
             textinpt = textInput("teste","teste","Entre com a busca"),
             tab1 = withSpinner(DT::dataTableOutput("tab1"), type=4),
             seletor = selectInput("seletor", "selecione", choices=unique(colnames(mtcars)), width ="40px"),
             pizza = withSpinner(plotlyOutput("reativo", height = "299px"), type=6),
             grafico2 = withSpinner(plotlyOutput("g2", width = "199px"), type=6),
             seletor2 = selectInput("seletorVa", "Selecione a variável de interesse", choices = unique(colnames(mtcars)))
             )







## FcustomCSS <- function (){

 ## customCSS <- function (theme = NULL) {
  
 ##   htmlDependency("custom", "1.0", src=c(href = "shared/Apps", file = system.file("www/shared/Apps", package ="shiny")),
 ##                  stylesheet ="style.css")


 ## }

 ## customCSS2 <- function (theme = NULL){
 ##   htmlDependency("ccs", "1.0", src = c(href = "shiny"), stylesheet = "www/style.css")
 ## }
## customCSS2()

