
#install.packages("rvest")
#install.packages("XML")
#install.packages("magrittr") 

setwd("C:/Users/shubh/OneDrive/Desktop/R Practice")

library(rvest)
library(XML)
library(magrittr)

# Amazon Reviews #############################
aurl <- "https://www.amazon.in/Amazon-Echo-Smart-speaker-Powered/dp/B0714JKG4Y/ref=sr_1_6?crid=1L1E7XXN79JY9&keywords=alexa+echo+dot+4th+generation&qid=1583401345&sprefix=alexa+%2Caps%2C686&sr=8-6"
amazon_reviews <- NULL
for (i in 1:10){
  murl <- read_html(as.character(paste(aurl,i,sep="=")))
  rev <- murl %>%
    html_nodes(".review-text") %>%
    html_text()
  amazon_reviews <- c(amazon_reviews,rev)
}
length(amazon_reviews)
write.table(amazon_reviews,"apple.txt",row.names = F)

