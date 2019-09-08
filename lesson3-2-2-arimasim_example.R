library(fma)
# install.packages("xts")
# install.packages("urca")
install.packages("PerformanceAnalytics")
library(forecast)
library(xts)
library(tseries)
library(quantmod)
library(PerformanceAnalytics)
library(urca)
library(ggplot2)
SPY1=(SPY$Close)        
head(SPY1,n=10)
plot(SPY1)


StationarityTest= ur.df(SPY1,type="none",selectlags ="AIC")
summary(StationarityTest)
D.SPY=diff(SPY1, lag=1 ,differences=1 )
plot(D.SPY)
Stationarity_Diff= ur.df(D.SPY,type="none",selectlags ="AIC")
summary(Stationarity_Diff)


#autocorrelation
ggAcf(D.SPY, lag.max = 10) +theme_bw()
ggPacf(D.SPY, lag.max = 10) +theme_bw()

# ARIMA Models 
ARIMA1 <- Arima(D.SPY , order= c(1,0,1))
ARIMA2 <- Arima(D.SPY , order= c(1,0,2))
ARIMA3 <- Arima(D.SPY , order= c(2,0,1))
ARIMA4 <- Arima(D.SPY , order= c(2,0,2))
#summaries
summary(ARIMA1)
summary(ARIMA2)
summary(ARIMA3)
summary(ARIMA4)

#AutoArima
Fitted.Arima =auto.arima(SPY1)
#plot forecasted arima
q=summary(Fitted.Arima,h=10)
summary(q)
plot(q)
#BIC and  AIC is used for this
