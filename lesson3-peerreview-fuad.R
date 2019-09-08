#############################################################
#
# Financial Analytics Assignment 2
#
# In this assignment, you are asked to use some of the 
# commands demonstrated in the video examples to analyze
# the problem.  You will then be asked to interpret the 
# results.  
#
# For this assignment, you may use any resources necessary
# to be able to exectute the code.  However, the interpretation 
# should reflect your thinking.
#
# You are to work on the problem alone, without help 
# from any other person.
#
###############################################################

# INSTRUCTIONS:  Enter your code between the comments line 
# as directed.  Comments begin with a hashtag '#'.
# For example

### Start Code

### End Code

# If you are asked to interpret results, make sure to put your
# answers in a comment line.

################################################################ 

###  required libraries  ###
# Run the following code to load the packages (libraries)
# If the library package does not load properly, make sure 
# that you have installed the package onto  your system.  
# Use the 'Packages' tab in RStudio to install the package.

library(fma)
library(ggplot2)




### end required libraries

### Run the following code


data(pigs)                   # This load the  dataset into R from fma library

# see https://cran.r-project.org/web/packages/fma/fma.pdf for details.


# The data a time series of monthly total number of pigs
# slaughtered in Victoria, Australia (Jan 1980 - Aug 1995)
# 

#*** START CODING: Question 1

# Q.1  Display the first 24 data points using the head() function.  Familiarize
# yourself with the structure of the data.
head(pigs,n=24)


# Q.2 Use the autoplot()  command to graph the pigs data.

autoplot(pigs)

# Q.3 Describe the plot.
#This is time series data with X-axis having Years and Y-Axis having amount of Pgs .
# we can see there seems to be a data secrepancy around 1980 but then we had a growing trend which 
# various points between 1981 -1985 have peaks and valleys when we see a dip and lower values between 
# 1985 and 1990 after which we still see peaks and valleys but growing trend
#* A good answer will describe the x-axis, y-axis, and any trends.



# Q.4 Use the seasonplot()  command to graph the pigs data.

seasonplot(pigs)

# Q.5 Describe the plot.

# This plot shows how the pigs data is broken by month  over multiple years . Ww
# can see an outlier in March and one in august but we see a steady movement of pigs 
# between 80k and less than 120K

# Q.6 Create an ARIMA model using the auto.arima() command and the pigs data. 

#AutoArima
Fitted.Arima =
auto.arima(pigs)
#plot forecasted arima
q=summary(Fitted.Arima,h=10)
summary(q)
plot(q)

# Q.7 What are the paremeters for the ARIMA model using the data 'pigs'? 

# In other words what is the model (ARIMA (p,d,q)(P,D,Q)) and what do the parameters mean?
#ARIMA(1,1,1)(2,0,1) 

#p tells us how many lags of stationarized time should be used
#d tells is integrated order of 0
#q tell us  how many lags for forecasted errors should be use


#Q.8 What is the AIC value?
#AIC=3966.92


#Q.9 What is the AIC used for?

#AIC is used for the relative quality of the statistical model and the ARIMA model will use
#this to  determine the best model 




