rm(list=ls())
getwd()
setwd("C:/Users/romaa/Desktop/1/Downloads")

Data <- read.csv("HS.csv",header=TRUE,sep=",")
View(Data)
str(Data)
attach(Data)
head(Data)
summary(Data)
library(VIM)
Impute1<-kNN(Data,variable="Genre",k=1)
summary(Impute1)
View(Impute1)
Impute2<-kNN(Data,variable=c("Audience..score..","Profitability"),k=6)
summary(Impute2)
  Impute3<-kNN(Data,variable="Rotten.Tomatoes..",k=6)
summary(Impute3)