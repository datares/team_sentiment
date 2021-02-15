setwd("/Users/deepthi/Desktop")

#load in table
Tweets <- read.csv("COVID_Tweets_merged_data.csv")

library("plyr")
#extract unique number of sources in table and their associated freq
unique_Source <- as.data.frame <- count(Tweets, 'source')
#order by frequency 
unique_Source<- unique_Source[order(unique_Source$freq),]
# extract top 10 sources
Top_10_Source <- unique_Source[602:611,]
# extract top 20 sources
Top_20_Source <- unique_Source[592:611,]


library(ggplot2)
#plot top 10
p<-ggplot(data=Top_10_Source, aes(x=source, y=freq)) +
  geom_bar(stat="identity",fill="steelblue") +
  theme_minimal() +labs(title ="Top 10 Sources")+ xlab("Source")+ylab("Number of Users from Source")
p

#plot top 20
p2<-ggplot(data=Top_20_Source, aes(x=source, y=freq)) +
  geom_bar(stat="identity",fill="steelblue") +
  theme_minimal() +labs(title ="Top 20 Sources")+ xlab("Source")+ylab("Number of Users from Source")
p2+theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))
