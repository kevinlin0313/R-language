#第一題
modify<-function(scores){
	student_names=c("A","B","C")
	adjust_scores=round(sqrt(scores)*10,0)
	results=rep(NA,3)
	for(i in 1:3)
	{
		if(adjust_scores[i]>=60)
			results[i]<-"過"
		else
			results[i]<-"當"
	}
	table<-data.frame(學生姓名=student_names, 調整前成績=scores, 調整後成績=adjust_scores, 過或當=results)
	return(table)
}
調整前成績<-sample(0:59,3,T)
modify(調整前成績)

#第二題
all_target<-matrix(as.integer(c(c(1,2,3),c(4,5,6),c(7,8,9),c(1,4,7),c(2,5,8),c(3,6,9),c(1,5,9),c(3,5,7))),nrow=8,byrow=T)
#print(all_target)

球魔方<-function(x){
  中獎數<-0
  未中獎數<-0
  for(i in 1:x)
	{
    print("==============")
    print(i)
		s<-sample(1:8,1)
		target<-all_target[s,]
		print("預設中獎:")
		print(target)
		target_vector<-rep(NA,9)
		target_vector[target]<-"O"
    target_matrix<-matrix(target_vector,nrow=3,byrow=T)
    print(target_matrix)
    
		result<-sample(1:9,3)
		#print(result)
		order_result=result[order(result)]
		print("玩家連線:")
		print(order_result)
		result_vector<-rep(NA,9)
		result_vector[order_result]<-"O"
		result_matrix<-matrix(result_vector,nrow=3,byrow=T)
		print(result_matrix)
	  
		if(identical(target,order_result))
		{
		  print("結果:中獎")
		  中獎數<-中獎數+1
		}  
		else
		{
		  print("結果:未中獎")
		  未中獎數<-未中獎數+1
		}
			
  }
	中獎數量統計<-c(未中獎=未中獎數,中獎=中獎數)
	barplot(中獎數量統計,main="球魔方中獎統計圖表")
	return(中獎數量統計)
}

球魔方(100000)