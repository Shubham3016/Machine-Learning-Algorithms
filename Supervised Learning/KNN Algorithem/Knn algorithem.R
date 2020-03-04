#k-nearest neighbors (KNN) algorithm classifiers
# k-nearest neighbors (KNN) algorithm is a simple, easy-to-implement supervised machine learning algorithm
#that can be used to solve both classification and regression problems

#table of diagnosis
table(KNN$diagnosis)

#table or proportions with more informative labels
round(prop.table(table(KNN$diagnosis))*100,digits = 1)

#create normalization Function
normalize<-function(x)
{
  return((x-min(x))/(max(x)-min(x)))
}

#normalize the KNN data
KNN_n<-as.data.frame(lapply(KNN[2:31],normalize))
KNN_nl<-cbind(KNN_n,KNN$diagnosis)

#create training and test data
KNN_train<-KNN_n[1:469,]
KNN_test<-KNN_n[470:569,]

#create labels from training and test data
KNN_train_labels<-KNN[1:469,1]
KNN_test_labels<-KNN[470:569,1]

library(class)

KNN_test_pred<-knn(train=KNN_train,test=KNN_test,cl=KNN_train_labels,k=20)

##Evaluating model performance
#load the "gmodel" library
library(gmodels)

#create the cross tabulation of predicted vs. actual
CrossTable(x=KNN_test_labels,
           y=KNN_test_pred,
           prop.chisq = FALSE,
           prop.c = FALSE,prop.r = FALSE)


####Improving model performance
#use the Scale() function to z-score standardize a data frame
KNN_z<-as.data.frame(scale(KNN[-1]))

#crate training and test datasets
KNN_train<-KNN_z[1:469,]
KNN_test<-KNN_z[470:569,]


KNN_test_pred<-knn(train=KNN_train,test=KNN_test,cl=KNN_train_labels,k=21)


#create the cross tabulation of predicted vs. actual
CrossTable(x=KNN_test_labels,
           y=KNN_test_pred,
           prop.chisq = FALSE,
           prop.c = FALSE,prop.r = FALSE)


####tri several different values for k

KNN_test_pred<-knn(train=KNN_train,test=KNN_test,cl=KNN_train_labels,k=2)
CrossTable(x=KNN_test_labels,
           y=KNN_test_pred,
           prop.chisq = FALSE,
           prop.c = FALSE,prop.r = FALSE)

KNN_test_pred<-knn(train=KNN_train,test=KNN_test,cl=KNN_train_labels,k=5)
CrossTable(x=KNN_test_labels,
           y=KNN_test_pred,
           prop.chisq = FALSE,
           prop.c = FALSE,prop.r = FALSE)

KNN_test_pred<-knn(train=KNN_train,test=KNN_test,cl=KNN_train_labels,k=14)
CrossTable(x=KNN_test_labels,
           y=KNN_test_pred,
           prop.chisq = FALSE,
           prop.c = FALSE,prop.r = FALSE)

KNN_test_pred<-knn(train=KNN_train,test=KNN_test,cl=KNN_train_labels,k=30)
CrossTable(x=KNN_test_labels,
           y=KNN_test_pred,
           prop.chisq = FALSE,
           prop.c = FALSE,prop.r = FALSE)


#first is row , second is column



#help("cbind")

#dim(KNN) to know rows and column wgere 
