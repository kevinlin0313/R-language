#第一題
library(tm)

speech<-readLines("Elon_Musk_interview.txt")
corpus<-VCorpus(VectorSource(speech))

corpusSW<-tm_map(corpus, stripWhitespace)
corpusTL<-tm_map(corpusSW, content_transformer(tolower))
corpusRN<-tm_map(corpusTL, removeNumbers)
corpusRP<-tm_map(corpusRN, removePunctuation)
corpusRM<-tm_map(corpusRP, removeWords, stopwords("english"))

tdm<-TermDocumentMatrix(corpusRM)
tdmMatrix<-as.matrix(tdm)
tdmSort<-sort(rowSums(tdmMatrix),T)
tdmdf<-data.frame(freq=tdmSort)

tdmdf_top <- head(tdmdf, 6)
print(tdmdf_top)

barplot(tdmdf_top$freq,
        names.arg = rownames(tdmdf_top),
        las = 2,
        col = "blue",
        main = "Top 6 Most Frequent Words",
        ylab = "Frequency",
        xlab = "Words")

#第二題
library(ggplot2)
MJ<-read.csv("MJ.csv",header=T,sep=",")
KB<-read.csv("KB.csv",header=T,sep=",")
LJ<-read.csv("LJ.csv",header=T,sep=",")

calculate_efficiency <- function(data) {
  data$Performance <- data$PTS + data$TRB + data$AST + data$STL + data$BLK - ((data$FGA - data$FG) + (data$FTA - data$FT) + data$TOV)
  efficiency <- sum(data$Performance * data$G) / sum(data$G)
  return(efficiency)
}

MJ_EFF <- calculate_efficiency(MJ)
KB_EFF <- calculate_efficiency(KB)
LJ_EFF <- calculate_efficiency(LJ)

efficiency_data <- data.frame(
  Player = c("MJ", "KB", "LJ"),
  Efficiency = c(MJ_EFF, KB_EFF, LJ_EFF)
)

ggplot(efficiency_data, aes(x = Player, y = Efficiency, fill = Player)) +
  geom_bar(stat = "identity", position = position_dodge(width = 1)) +
  labs(title = "三位球員的生涯績效值", x = "球員", y = "生涯績效值") +
  theme_minimal() +
  theme(legend.position = "none")

