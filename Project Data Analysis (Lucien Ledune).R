######################################################
#         Data Analysis on Pokemon Dataset           #
######################################################

#Loading libraries
library(FactoMineR)
library(MASS)

#Preparing data
Data = read.csv("https://raw.githubusercontent.com/dfghdf89/Pokemon-Data-Analysis-Project/master/Pokemon.csv")

#Names as column 
names = Data$Name
row.names(Data) = names
Data = as.matrix.data.frame(Data)

#Delete name and Type2 cols
Data = Data[,c(1, 3, 5:13)]
DataPCA = Data[, c(3:9)]

#Converting Data into numeric values (Correcting import problem from csv)
DataPCA = apply(DataPCA, 2, as.numeric)

#PCA Analysis of the Data.
res.pca = PCA(DataPCA, ncp = 3, scale.unit = TRUE )

#Matrix for lda

#LDA, legendar or not ?
lda(Data)