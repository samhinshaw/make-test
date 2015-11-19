# library(ggplot2)
# library(dplyr)
# dict <- read.table("words.txt", stringsAsFactors = FALSE)
# dict <- tbl_df(dict)
# colnames(dict) <- "word"
# dict <- dict %>%
# 	mutate(length = nchar(word))
# ggplot(dict) +
# 	geom_histogram(aes(x = length))



words <- readLines("words.txt")
word_length <- nchar(words)
freq_table <- as.data.frame(table(word_length))
write.table(freq_table, "histogram.tsv", quote = FALSE, sep = "\t", row.names = FALSE)

