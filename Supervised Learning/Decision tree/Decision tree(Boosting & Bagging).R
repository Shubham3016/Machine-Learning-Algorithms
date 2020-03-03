acc<-c()
for(i in 1:500)
{
  
  print(i)
  ##Data Partition
  inTraininglocal<-createDataPartition(iris$Species,p=.85,list=F)
  train<-iris[inTraininglocal,]
  test<-iris[-inTraininglocal,]
  
  # Model Building
  
  fittree<-C5.0(train$Species~., data=train,trials=25)
  
  #predicting
  
  pred<-predict.C5.0(fittree,test[,-5])
  a<-table(test$Species,pred)
  
  # save the Accuracy model
  acc<-c(acc,sum(diag(a))/sum(a))
}


summary(acc)

boxplot(acc)

summary(fittree)

