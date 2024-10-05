grade<-c("A","B","C","D","E")
scores<-c("100-80","80-70","70-60","60-50","50-0")
GPA<-4:0

table<-data.frame(grade,scores,GPA)
table


transform<-function(score){
	x<-ifelse(score>=80,1,
		ifelse(score>=70,2,
			ifelse(score>=60,3,
				ifelse(score>=50,4,5))))
	print(x)
	data.frame(成績=score,table[x,],row.names=NULL)
}

myscore<-sample(0:100,5,T)

transform(myscore)