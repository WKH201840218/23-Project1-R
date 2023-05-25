install.packages("wordcloud")
library(wordcloud)

word <- c("김유신", "강감찬", "을지문덕", "안중근")
frequency <- c(651, 222, 431, 432, 622, 721)

wordcloud(word, frequency, colors = "blue")