library(shiny)
library(tidyverse)
library(DT)
function(input, output){
  output$tab1<- DT::renderDataTable({
    DT::datatable(mtcars)
 })

}
