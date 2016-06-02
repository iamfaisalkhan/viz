setwd('~/Development/flowingData/')
hotdogs <- read.csv('hot-dog-contest-winners.csv')

fill_colors <- c()
for (i in 1:length(hotdogs$Country) ) {
  if (hotdogs$New.record[i] == 1) {
    fill_colors <- c(fill_colors, "#821122")
  } else {
    fill_colors <- c(fill_colors, "#cccccc")
  }
}

barplot(hotdogs$Dogs.eaten, names.arg=hotdogs$Year, col=fill_colors, border=NA, space=0.3, xlab="Year", ylab="Hot dogs and buns (HDB) eaten")
