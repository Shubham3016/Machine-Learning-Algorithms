data = read.csv("E:/ASSignment/Assignment 1/Q7.csv",header=T,sep=",")
mean(data$Points)
mean(data$Score)
mean(data$Weigh)


median(data$Points)
median(data$Score)
median(data$Weigh)
summary(data)

#MODE USING R

getmode<-function(x)
{
  uniq<-unique(x)
  uniq[which.max(tabulate(match(x,uniq)))]
}

x<-c(10,9,9,5,18,20,5,-21,5,5)

result<-getmode(x)
result

#MEAN AND MEDAIN

data<-c(34,36,36,38,38,39,39,40,40,41,41,41,41,42,42,45,49,56)
mean(data)
median(data)
var(data)
sd(data)



#MEAN

x <- c(1,2,3,4,5,1,2,3,1,2,4,5,2,3,1,1,2,3,5,6) # our data set
mean.result = mean(x) # calculate mean
print (mean.result)

#Median: The middle value of the data set.

x <- c(1,2,3,4,5,1,2,3,1,2,4,5,2,3,1,1,2,3,5,6) # our data set
median.result = median(x) # calculate median
print (median.result)

#Mode: The most occurring number in the data set. For calculating mode,
#there is no default function in R. So, we have to create our own custom function.

mode <- function(x)
{
ux <- unique(x)
ux[which.max(tabulate(match(x, ux)))]
}

x <- c(1,2,3,4,5,1,2,3,1,2,4,5,2,3,1,1,2,3,5,6) # our data set
mode.result = mode(x) # calculate mode (with our custom function named 'mode')
print (mode.result)

#Variance: How far a set of data values are spread out from their mean.

variance.result = var(x) # calculate variance
print (variance.result)

#Standard Deviation: A measure that is used to quantify the amount of variation or dispersion of a set of data values.

sd.result = sqrt(var(x)) # calculate standard deviation
print (sd.result)
