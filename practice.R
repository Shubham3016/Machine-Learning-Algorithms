DATA Frame


df<-data.frame(x=1:3,y=c("a","b","c"))
df
df[1,c(1,2)]
df[2,2]
df[3,]
df[c(1,3),2]
df[c(1,3),c(1,2)]

data.frame(height=c(150,160),weight=c(65,72))
vect<-c("1","2","3")
vect<-c(1,2,3, "a","b")
vect
v1<-c(1,2,3)
v2<-c("1","2","3")
mean(v1)
mean(v2)

#WORKing ON DATASETS  AIR QUALITY

airquality<-datasets::airquality
airquality
airquality<-datasets::airquality
head(airquality)#first five values
tail(airquality)#last five values
airquality[,c(1,2)]#first and 2 rows and colums
airquality[,c(5,6)]#
airquality$Temp#to know the specific column 
summary(airquality$Temp)#to shows value
summary(airquality$Ozone)
summary(airquality$Wind)
plot(airquality$Ozone,airquality$Temp)#to plot x as ozone and y as temp
view(airquality)
plot(airquality)
summary(airquality)

summary(airquality$Temp)
plot(airquality$Ozone)
plot(airquality $Ozone,airquality$Temp)
plot(airquality)
summary(airquality)#to give whole summary of datasets

plot(airquality$Ozone,type = "l")
plot(airquality$Ozone,xlab ='ozone Concentration',ylab = 'No of Instances',main='Ozone levels in NY city',col='blue')

#horiozontal plot

barplot(airquality$Ozone,main='Ozone Concentration in air',xlab='ozone levels',col='red',horiz=FALSE)

#Histogram

hist(airquality$Solar.R)
hist(airquality$Solar.R,main="Solar Radiation values in air",xlab="solar rad.",col="blue")

#single box plot

boxplot(airquality$Solar.R)

#Multiple box plot
boxplot(airquality[,1:4],main='Multiple')#[1:4] columns

par(mfrow=c(3,3),mar=c(2,5,2,1),las=0,bty="n")#mfrow use for partition 
plot(airquality$Ozone)
plot(airquality$Ozone,airquality$Wind)
plot(airquality$Ozone,type="c")
plot(airquality$Ozone,type="s")
plot(airquality$Ozone,type="h")

barplot(airquality$Ozone,main='ozone concenteration in air',xlab='ozone levels',col='green',horiz = TRUE)
hist(airquality$Solar.R)
boxplot(airquality$Solar.R)
boxplot(airquality[,0:4],main='Multiple Box plots')

