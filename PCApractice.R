attach(PCA)
#install.packages("gdata")
#install.packages("xlsx")

library(gdata)


PCA<-princomp(PCA[,2:7],cor = TRUE,scores=TRUE,covmat = NULL)
summary(PCA)
PCA$scores
PCA$loadings

plot(PCA$scores)
text(PCA$scores[])
PCA$

