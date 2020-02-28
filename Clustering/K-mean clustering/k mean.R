# k-means Algorithm

install.packages("plyr") #install package plyr
library(plyr)
x<-runif(50) #Generating 50 random numbers from uniform distribution(0,1)
y<-runif(50) #Generating 50 random numbers
data<-cbind(x,y)
help("cbind")
plot(data)

#get the reference value of k for
#the experiment in elbow plt-4 clusters;
#use the above k value as refernce and run the below for  l00 to
#find optimum k value

wss<-c()
for(i in 2:15) wss[i]<-sum(kmeans(data,centers = i)$withinss)
#use the loOP TO GET appropriate value for k
plot(1:15,wss,type = "b",xlab = "No of clusters",ylab="Avg distance")


###Cluster algorithm building

km<-kmeans(data,8)
km$centers # show distance between centroid and all datapoints
km$cluster # show the clusters formed


install.packages("animation")
library(animation)
windows() #pop a new window
km<-kmeans.ani(data,7)






#K-Means Clustering

install.packages("plyr")
library(plyr)

x <- runif(50) #Generate 50 random numbers and store it in x

y <- runif(50) #Generate 50 random numbers and store it in y

data <- cbind(x,y) #Combines the data of x and y

plot(data)

#Get the reference value for k The experiment in elbow plt - 4 clusters;
#Use the above k value as referenceand run the below to find optimum k value

wss <- c()
for (i in 2:15) wss[i]<- sum(kmeans(data, centers = i)$withinss)
plot(1:15,wss,type = "b", xlab = "No of Clusters", ylab = "Avg Distance")

#Cluster Algorithm Building

km <- kmeans(data,8) #Here we are using the kmeans algorithm with k value as 8
km$centers #To find the centroid of the Clusters
km$cluster #To find the datapoints Cluster number

#In order to see the execution of kmeans algorith, we use the animation package

install.packages("animation")
library(animation)

windows()#to pop a new window
km1 <- kmeans.ani(data,6)
