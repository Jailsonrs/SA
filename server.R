library(shiny)
library(tidyverse)
library(DT)
library(ggthemes)
source("sa.R")
tema <- theme(
  panel.background = element_blank(),
  panel.grid.major = element_line(colour="red", color="red")
)
function(input, output){
  output$reativo <- renderPlotly({
    p <- ggplot(mtcars,aes(mpg, hp, fill=hp) )+
      geom_point()+
      ggtitle("Diagrama de Dispersao")+
      theme_bw()
    gp <- ggplotly() %>% config(collaborate=FALSE, cloud=FALSE, displaylogo=FALSE)
    gp <- layout(gp, margin=list(t = 75))
    gp
  })

  output$tab1 <- renderDataTable({
    DT::datatable(mtcars)
  })
}






