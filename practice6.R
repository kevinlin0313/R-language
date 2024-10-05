x<-5
y<-10
for(i in x:y)
{
	print(i)
}

z<-1:10
for(i in z)
{
	ifelse((i%%2)==0,print("偶數"),print("奇數"))
}

for(i in z)
{
	if(i%%3==0)
		print(i)
}


