library(shiny)
library(plotly)

library(tidyverse)
##install.packages("shinycssloaders")
library(shinycssloaders)
library(DT)
library(highcharter)
##install.packages("highcharter")
library(ggthemes)
library(ggplot2)
library(magrittr)
source("sa.R")
tema <- theme(
  panel.background = element_rect(fill="azure2"),
  panel.grid.minor = element_line(color="red"),
  axis.line = element_line(size=1,linetype=2, arrow=1)

)


function(input, output){
  data(mtcars)
  output$reativo <- renderPlotly({
    p <-ggplot(mtcars,aes(mpg, hp))+
      geom_point(col="deepskyblue4")+
      ggtitle("Diagrama de Dispersao")+
      stat_smooth(method=lm,se=F)+
      tema
    
    gp <- ggplotly() %>% config(collaborate=FALSE, cloud=FALSE, displaylogo=FALSE, modeBarButtonsToRemove=c("select2d", "sendDataToCloud", "pan2d", "resetScale2d", "hoverClosestCartesian", "hoverCompareCartesian", "lasso2d", "zoomIn2d", "zoomOut2d"))
    gp <- layout(gp, margin=list(t = 100))
    gp
  })
  output$tab1 <- renderDataTable({
    DT::datatable(mtcars)
  })
}


