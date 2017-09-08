library(shiny)
library(tidyverse)
library(DT)
source("sa.R")
function(input, output){
  output$tab1<- DT::renderDataTable({
    DT::datatable(mtcars)
 })


}
