data(iris)
acc<-c()
for(i in 1:1000)
  
{
  print(i)
  ## Data Partition
  inTraininglocal<-createDataPartition(iris$Species,p=.70,list=F)
  training1<-iris[inTraininglocal,]
  testing<-iris[-inTraininglocal,]
  
  #Model Builiding
  fittree<-C5.0(training1$Species~.,data=training1)
  #Predicting
  pred<-predict.C5.0(fittree,testing[,-5])
  a<-table(testing$Species,pred)
  
  #Accuracy
  acc<-c(acc,sum(diag(a))/sum(a))
}
summary(acc)
boxplot(acc)
  
  
  
  
  
  
  
  
  
  
  
  
}