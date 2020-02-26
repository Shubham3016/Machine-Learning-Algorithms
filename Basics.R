# Basics of R

1+1   # Addition

5-2   # Subtraction 

3*6   # Multiplication

10/5  # Division

3**2  # 3 square 

3**3  # 3 cube

x<-2  # <- Comparision Operator to set value
y<-4
z<-6
x+y+z

# vector Construction

vect<-c(1,2,3,4,5) # Atomic vector created with c()


rep(1,10)#repete number 1,10 times

seq(2,6)#sequence of integer between 2 and 6

seq(4,20,by=4) # Every 4th integer between 4 and 20
x<-c(2,0,0,4)# create vector with elements 2,0,0,4
y<-c(1,9,9,9)
x+y #sums elements of two vectors
x*y
sqrt(x)# find sqrt of x
x[1] #indexing
y[3]
x[-1] # exclude first element [0,0,4]
x[1]<-3;# change the value of first element
x

x[-1]<-5 #exclude 1 and change others values by 5
x

y<9 # compare each element

y[4]=1 
y

y<9 # compare each element

y[y<9]=2 #replace with 2 which are less then 9 
y
 

#DATA FRAME
df<-data.frame(x=1:3,y=c("a","b","c"))
df

data.frame(height=c(150,160),weight=c(65,72))


df<-data.frame(x=1:3,y=c("a","b","c"))#1st row 2nd column
df

df<-data.frame(x=1:3,y=c("a","b","c"))
df

df[2,2] #to find the b value 
df[3,c(1,2)]# to find 3,c
df[3,]
df[,2]
df[c(1,3),2] #to find a,c
df[c(1,3),c(1,2)]# to find (1,a),(3,c)


v1<-c(1,2,3)
v1
v2<-c('1','2','3')
v2
mean(v1)#mean 
mean(v2)
