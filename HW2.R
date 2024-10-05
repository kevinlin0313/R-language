library("rvest")

url<-"https://tw.stock.yahoo.com/quote/0050/dividend"
data<-read_html(url)
node<-html_nodes(data,"span")
text<-html_text(node)

股利資料<-text[seq(169,79,by = -9)]
股利值<-as.numeric(股利資料)
years<-2014:2024

barplot(股利值, names.arg=years, main="台灣五十股利資料")