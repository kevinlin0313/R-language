library("rvest")

url<-"https://www.imdb.com/title/tt1190634/?ref_=hm_top_tt_i_1"
data<-read_html(url)

node<-html_nodes(data,".hero__primary-text")

text<-html_text(node)

text