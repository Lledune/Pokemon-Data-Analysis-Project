######################################################
#         Data Analysis on Pokemon Dataset           #
######################################################

#Loading libraries
library(FactoMineR)
library(MASS)

#Preparing data
Data = read.csv("C:/Users/Lucien/Desktop/Pokemon-Data-Analysis-Project/Pokemon.csv", sep = ";")

#Keeping gen1 only
Data = subset(Data, Data$Generation == 1)

#Analyse descriptive

#Preparing subsets 
subsets = split(Data, Data$Type.1, drop=TRUE)

#Delete name and Type2 cols
Data = Data[,c(1, 3, 5:13)]
DataPCA = Data[, c(4:9)]

#Converting Data into numeric values (Correcting import problem from csv)
DataPCA = apply(DataPCA, 2, as.numeric)

#PCA Analysis of the Data.
plot.HCPC(reS.hcpc, tree.barplot  = T, choice = "bar")

#creating contingency table
CA(table(Data$Type.1, Data$Generation))








