data(iris)
# Boosting
# Data partition for model building and testing

inTraininglocal<-createDataPartition(iris$ Species,p=.75,list=F)
training<-iris[inTraininglocal,]
testing<-iris[-inTraininglocal,]

# Model Building

model<-C5.0(training$Species~.,data = training,trials=10) # Trials -Boost

# Generate the model Summary

summary(model)
# predict for test data set
pred<-predict.C5.0(model,testing[,5])
a<-table(testing$Species,pred)


acc<-c(acc,sum(diag(a))/sum(a))

summary(acc) 
 

# Accuracy



