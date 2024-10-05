data<-read.csv("ExchangeRate@202407232031.csv",header=T,sep=",")

ggplot(data,aes(x=資料日期,y=即期))+geom_point()+stat_smooth()