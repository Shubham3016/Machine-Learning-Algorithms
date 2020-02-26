
air<-datasets::airquality # to import dataset 
head(air) #gives top 6 values (first 6 rows)
tail(air) #give bottom 6 values (last 6 rows)

airquality[,c(1,2)] # generate first 2 columns 

airquality $Temp #gives detail description of temp

summary(air)# gives detail description of whole dataset

summary(air$Temp) # summary of temp

summary(air$Ozone) 

summary(air$Wind) 

plot(air$Ozone) # plot the graph of Ozone

plot(air$Ozone,air$Wind) #plot the graph of ozone x-axis is Ozone y is wind 

plot(airquality) #plot the graph

summary(air)

plot(airquality $Ozone,type="l")#p-points l=lines b:both h

plot(airquality $Ozone, xlab = "ozone concentration",ylab="No of Instances",main="Ozone levels in the city",col="red")# xlab-xaxis ylab=yaxis main=title col=color 

#Barplot
barplot(air $Ozone,main = "Ozone COncentration in air",xlab="Ozone levels",ylab="No of instances",col="blue",horiz=FALSE)

#Histogram
hist(air$Solar.R,
main="Solar Radiation values in air",
xlab="solar red",col="red")

boxplot(airquality$Solar.R)
# Multiple box plot

boxplot(air[,1:4],main="multiple") # 1:4 columns together

# TO see the all the plots togther 

# Margin of the grid(mar),
# no of rows and columns(mfrow)
# whether a border is to be includes(bty)
# and position of the 
# Lables(las:1 for horizontal, las:0 for vertical)


par(mfrow=c(3,3),mar=c(2,4,2,1), las=0,bty="n") # divide into 3 grids 

plot(air$Ozone)

plot(air$Ozone,air$Wind)

plot(air$Ozone,type="c")
plot(air$Ozone,type="s")
plot(air$Ozone,type="h")

barplot(air$Ozone,main="Ozone COncentration",xlab="ozone",ylab = "no of instaces", col="blue",horiz = TRUE)
hist(air$Solar.R)
boxplot(air$Solar.R)
boxplot(air[,0:4],main="Multiple box plot")
