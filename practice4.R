getwd()

data<-read.csv("110_sdata.csv", header=T,sep=",")
head(data)

m<-max(data$學生數)
m

s<-subset(data,學生數==max(data$學生數))
s

nycu<-subset(data,學校名稱=="國立陽明交通大學")
head(nycu)

cs<-subset(nycu,科系名稱=="資訊工程學系")
cs

sum(cs$學生數)
sum(cs$教師數)

cs$學生數/cs$教師數
