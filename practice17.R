library(tm)
library(wordcloud)
library(RColorBrewer)

speech<-readLines("JobsSpeech.txt")
corpus<-VCorpus(VectorSource(speech))

corpusSW<-tm_map(corpus, stripWhitespace)
corpusTL<-tm_map(corpusSW, content_transformer(tolower))
corpusRN<-tm_map(corpusTL, removeNumbers)
corpusRP<-tm_map(corpusRN, removePunctuation)
corpusRM<-tm_map(corpusRP, removeWords, c(stopwords("english"),"don’t"))

tdm<-TermDocumentMatrix(corpusRM)
tdmMatrix<-as.matrix(tdm)
tdmSort<-sort(rowSums(tdmMatrix),T)
tdmdf<-data.frame(freq=tdmSort)

tdmdfwd<-data.frame(tdmdf, words=names(tdmSort))
wordcloud(tdmdfwd$words, tdmdfwd$freq, col=brewer.pal(8,"Set2"), min.freq="10",  random.order=F)