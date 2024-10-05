x<-c(-1.4,3.71)
y<-c(-1.7,7.14)
z<-c(-2.5,11.53)

m<-matrix(c(x,y,z),nrow=3,byrow=T)

colnames(m)<-c("budget","income")
rownames(m)<-c("M1","M2","M3")

revenue<-rowSums(m)
new_m<-cbind(m,revenue)
new_m

sum(new_m[,3])

num<-sum(m[,2])
num*100000000/100

#num<-colSums(m)
#num[2]*100000000/100

m[,2]
mean(m[,2])

m[,1]
mean(m[,1])
