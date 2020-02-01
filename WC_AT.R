library("lattice")
attach(WC_AT)
dotplot(AT,main="Dot Plot of AT",col="dodgerblue4")
dotplot(Waist,main="Dot Plot of WC",col="dodgerblue4")

# Boxplot
boxplot(AT,col = "green")
boxplot(Waist,col = "yellow")

#Regression Model and its summary
reg.model<-lm(AT~Waist,data = WC_AT)
summary(reg.model)
#Prediction Intervals for new observations
predict(reg.model,data.frame(Waist=c(76.85,82)))
