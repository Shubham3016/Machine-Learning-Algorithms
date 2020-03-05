letterdata<-read.csv(file.choose())
View(letterdata)

letters_train <- letterdata[1:16000,]
letters_test <- letterdata[16001:20000,]

#Training a model on the data
#begin by training a simple linear SVM

library(kernlab)
letter_classifier<-ksvm(letter~., data=letters_train,kernal="vanilladot")

## Evulating model perfformace--
# predictions on testing dataset

letter_predictions<-predict(letter_classifier,letters_test)
head(letter_predictions)

table(letter_predictions,letters_test$letter)

agreement<- letter_predictions==letters_test$letter
agreement

prop.table(table(agreement))

# Improving model performance

letter_classifier_rbf<-ksvm(letter~., data=letters_train,kernal="rbfdot")
letter_classifier_rbf

letter_predictions_rbf<-predict(letter_classifier_rbf,letters_test)
letter_predictions_rbf

head(letter_predictions_rbf)

agreement_rbf<-letter_predictions_rbf==letters_test$letter
agreement_rbf
table(agreement_rbf)
prop.table(table(agreement_rbf))
