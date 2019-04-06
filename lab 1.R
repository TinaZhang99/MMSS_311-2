setwd("C:/Users/tzwhi/Desktop/Northwestern/311-2/R")

# Load packages
packages<-c("dplyr","ggplot2","lubridate","stringr","foreign")

load.packages<-function(x){
  if(!require(x, character.only = TRUE)){
    install.packages(x, dependencies = TRUE)
    library(x, character.only = TRUE)
  }
}

lapply(packages, load.packages)

link <- "http://www.qogdata.pol.gu.se/data/qog_std_cs_jan19.csv"
qog <- read.csv(link, header=TRUE)
print(dim(qog))
