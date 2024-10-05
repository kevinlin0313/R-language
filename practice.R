#1
a<-c(100,62,90)
b<-c(90,85,65)
c<-c(84,78,99)

m<-matrix(c(a,b,c),nrow=3,byrow=T)
colnames(m)<-c("國","英","數")
rownames(m)<-c("A","B","c")

avg<-round(colSums(m)/3,2)
newM<-rbind(m,avg)
newM

#2
j<-function(x){
	i<-2
	while(i!=x)
	{
		if((x%%i)==0)
			return(F)
		i<-i+1
	}
	return(T)
}

print(j(101))

#3
number1<-c(1,9,6,11,80,7,5)
number2<-c(88,20,75,96,11,20,5)

n1<-number1[order(number1)]
print(n1)
n1[(length(n1)+1)/2]

n2<-number2[order(number2)]
print(n2)
n2[(length(n2)+1)/2]







