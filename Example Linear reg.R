model<-lm(AT~Waist,data=WC_AT) #linear model,” function can be used to create a simple regression model.
summary(model)

pred<-predict(model,newdata = data.frame(Waist=80))
pred

library("lattice")
dotplot(WC_AT$AT,main="Dot plot of At",col="blue")
dotplot(WC_AT$Waist,main="Dot plot of Wc",col="blue")
boxplot(WC_AT$AT,col="red")
boxplot(WC_AT$Waist,col="red")

model<-lm(AT~Waist,data =WC_AT)
summary(model)
new<-data.frame(Waist=c(70,60))
pred<-predict(model,newdata = new)
pred<-predict(model)

finaldata<-data.frame(WC_AT,pred,"Error"=WC_AT$AT-pred)
finaldata
