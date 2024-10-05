library(rpart)
library(rpart.plot)
library(rattle)
library(RColorBrewer)

data<-read.csv("decision_tree_data.csv", header=T, sep=",", fileEncoding="UTF-8")
head(data)

tree<-rpart(決定~.,data,method="class",control = rpart.control(minsplit = 5))

plot(tree)
text(tree)
fancyRpartPlot(tree)