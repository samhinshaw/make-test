library(ggplot2)
# library(dplyr)
# dict <- read.table("words.txt", stringsAsFactors = FALSE)
# dict <- tbl_df(dict)
# colnames(dict) <- "word"
# dict <- dict %>%
# 	mutate(length = nchar(word))
wordfreq <- read.table("histogram.tsv", header = TRUE)
ggplot(wordfreq) +
	geom_histogram(aes(x = word_length, y = Freq), stat = "identity") +
	xlab("Word Length") +
	ylab("Frequency") +
	ggtitle("Frequency Distribution of Word \n Length in Ubuntu Dictionary")
ggsave("histogram.png")