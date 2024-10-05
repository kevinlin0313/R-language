scores<-sample(0:60,5,T)
students<-c("A","B","C","D","E")

adjust<-function(score){
	newScore<-rep(NA,5)
	newScore<-sqrt(score)*10
	data<-data.frame(before=score,after=newScore,row.names=students)
	print(data)
	print(max(data$before))
	print(min(data$before))
	print(max(data$after))
	print(min(data$after))
}

adjust(scores)
