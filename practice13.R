data<-read.csv("ExchangeRate@202407231600.csv",header=T,sep=",")

ggplot(data,aes(x=幣別,y=現金))+geom_point()+theme_light()+coord_polar(theta="x")+facet_wrap(~幣別)