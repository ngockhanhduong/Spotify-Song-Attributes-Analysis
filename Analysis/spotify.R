setwd("~/Dickinson/Fall 2020/Analytical Project/Spotify")
library(dplyr)
library(ggplot2)
library(cluster)

Spotify_Raw <- read.csv("./Data/Kaggle_data/data.csv", header=T)

head(Spotify_Raw[,1])
Spotify_Raw[1,]
summary(Spotify_Raw)

head(Spotify_Raw[,8])

?hist
header(Spotify_Raw[,1])

col_index1 <- c(1, 3:6, 8)
col_index2 <- c(9:12, 14:19)
layout(matrix(1:6, nc=6))
for (val in col_index1) {
  print(val)
  hist(Spotify_Raw[,val], xlab=Spotify_Raw[1,val])
}
for (val in col_index2) {
  print(val)
  hist(Spotify_Raw[,val])
}
'Question: Do the variables need to be in normal
distribution to be cluster variate?'
'How do I transform bimodal distribution'


