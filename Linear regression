
#create model for dataset
model<-lm(sunday~daily,data=NewspaperData)

summary(model) 
#whole summary of dataset

pred<-predict(model,newdata = data.frame(daily=300))#for prediction of data
pred #predict for 300 daily circulations

#visualization
library("lattice") #import lattice library
dotplot(NewspaperData$sunday,main="Dot plot of sunday Circulation",col="blue")
dotplot(NewspaperData$daily,main="Dot plot of Daily Circulations", col="blue")
boxplot(NewspaperData$sunday,col="red")

#regression equation
#syntax model<-lm(y~x,data=data set name)

model<-lm(sunday~daily,data=NewspaperData)
summary(model)
#create a data frame to predict sunday circulation with daily circulation
new<-data.frame(daily=c(200,250,300))
pred<-predict(model,newdata=new)
pred<-predict(model)
#show the final data with error
finaldata<-data.frame(NewspaperData,pred,"Error"=NewspaperData$sunday-pred)
finaldata

