library(forecast)
library(fma)
# spy data frame
spy <- c(286.51,285.63,282.14,282.78,280.15)
spy
spy.timeseries <-ts(c(286.51,285.63,282.14,282.78,280.15))
spy.timeseries

#create a plot
plot(spy.timeseries)
autoplot(spy.timeseries)
#look at coal data
head(bicoal)
head(bicoal,10)
autoplot(bicoal)