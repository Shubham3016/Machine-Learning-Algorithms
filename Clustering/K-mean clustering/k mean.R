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
