movName<-"一級玩家"
actName<-c("A","B","c")
scores<-c(4.5,4.0,5.0)
sources<-c("b1","b2","b3")
comments<-c("Best","Funny","Good")

REV=data.frame(scores,sources,comments)
REV

l<-list(name=movName,actor=actName,rev=REV)
l

l<-c(l,time=20180329)
l

l$actor[3]
l$rev$comments