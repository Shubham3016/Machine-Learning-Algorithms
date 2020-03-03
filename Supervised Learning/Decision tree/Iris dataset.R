data("iris")
View(iris)

#install packages caret and C50

install.packages("caret")
install.packages("C50")

#import Library

library(caret)
library(C50)

#patition Training and Testing data 
inTraininglocal<-createDataPartition(iris$Species,p=.70,list=F) #(p=.70)partition  70% of training dataset
training<-iris[inTraininglocal,]
testing<-iris[-inTraininglocal,]
View(testing)
View(training)

# Model Building

model<-C5.0(training$Species~.,data=training) #trials-boosting parameter

#Generate the model summary

summary(model)

#predict for test data set

pred<-predict.C5.0(model,testing[,-5])
pred

a<-table(testing$Species,pred)
sum(diag(a))/sum(a)
plot(model)
