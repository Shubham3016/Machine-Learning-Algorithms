x<-c(2,0,0,4)
x[1]#select first element
x[-1]
x[1]<-3;#exclude the first element
x
x[-1]<5
x
x[-1]<-5;
x
y<9 #compares each element returns result as vector
y[4]=1
y
y<9
y[y<9]=2
y
y[y<9]=9
y
y[y>9]=1

y











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

airquality<-datasets::airquality

