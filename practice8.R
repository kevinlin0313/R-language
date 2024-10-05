poker<-function(n){
	color<-c("紅心","黑桃","梅花","方塊")
	number<-c("A","J","Q","K",2:10)
	colors<-rep(color,each=13)
	numbers<-rep(number,times=4)
	cards<-paste(colors,numbers)
	result<-sample(cards,n)
	return(result)
}

poker(52)
