  data("iris")
#install.packages("caret")
#install.pakages ("C50")
  
  library(caret)
  library(C50)
  View(iris)
  
# Create data partition
  inTraininglocal<-createDataPartition(iris$Species,p=0.70,list = F)
  training  <-iris[inTraininglocal,]
  testing<-iris[-inTraininglocal,]
  
  # Model Builing
  model<-C5.0(training$Species~.,data=training) # Trials - Boosting parameter
  
  # Generate the model
  summary(model)
  
  # Predict for test data set
  pred<-predict.C5.0(model,testing[,-5])
  
  a<- table(testing$Species,pred)
  a
  
  sum(diag(a))/sum(a)
  
  plot(model)
  
  