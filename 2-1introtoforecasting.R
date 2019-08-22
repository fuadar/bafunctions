library(fma)
### average as forecast
#description of the beer data
head(beer)
summary(beer)
plot(beer)
meanf(beer,1)


#naive method
naive(beer,1)
naive(beer,5)
#random walk 
rwf(beer,5)

#### linear regression
head(books)
summary(books)
mean(books)
autoplot(books,ylab="Sales",xlab="time",size=1)
fit <- lm( Paperback ~  Hardcover, books) # fit a linear regressions
summary(fit)
plot(Paperback ~Hardcover, data=books , pch=19)
abline(fit)
