data<-read.csv("球隊身高體重表.csv",header=T,sep=",",fileEncoding = "UTF-8")
head(data)

data$球衣號碼<-NULL

分群<-kmeans(data,center=3,nstart=10)
分群

plot(身高~體重,data,col=分群$cluster)
points(分群$center[,c("體重","身高")],col=1:3,pch=8,cex=2)