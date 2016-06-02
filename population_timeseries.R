# A Timeseries chart

population <- read.csv("http://datasets.flowingdata.com/world-population.csv", sep=",", header=TRUE)
plot(population$Year, population$Population, type="l")