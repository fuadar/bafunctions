############################################################
#
# Financial Analytics Assignment
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


data(housing)                   # This load the housing dataset into R


hstarts <- housing[,'hstarts']  # This line moves one column of housing 
# to a variable called hstarts.

# The data housing is a time series dataset with three columns.  
# We will only use one column to simplify the code.
# This data is the monthly housing starts from Jan. 1983 - Oct. 1989.

######################################################################
######################################################################
#
#*** START CODING:  Question 1

# Q1.A Inspect the first 10 elements of hstarts using the head() command.

head(hstarts,10)

# Q1.B Plot the hstarts data using autoplot().
autoplot(hstarts)

# Q1.C Describe the plot in your own words.
# (answer here - remember to use hash tags for comments)
#
# The Hstarts plot shows yearly trends for housing starts and we can see housing starts start low go higher in the middle of the year and then drop down
# We see more  housing starts drop from from 1984 to 1990 WITH 1986 seeing a very high number
# we can see y-axi with the number of housing starts and x-axis as the years.
# Q1.D Plot the hstarts data using the seasonplot() command.

seasonplot(hstarts)

# Q1.E Describe and interpret theseason plot in your own words.
# (answer here - remember to use hash tags for comments)

# the same as aove but this time in months on the x-axis and the housing starts on the y-axis. it is not clear on the trends but 
# we can see a trend of increase in housing starts after march and before october.

#** A good description will note what is on the y-axis, x-axis, 
#** describe the trend, and descrbie any seasonal or cyclical patterns



#*** END CODING: Question 1




### QUESTION 2

# The next set of questions analyze the kkong dataset.  
# using linear regression.

data(kkong)   # This data set has height and weight of 21 gorillas.
attach(kkong) # This command allows you to reference just the column names.
# The column names are 'weight' and 'height'.



#*** START CODING:  Question 2


# Q2.A Use the summary() command on the column 'height' and 'weight'.
summary(height)
summary(weight)

# Q2.B Describe the results in your own words. Include
#We can see the summry of height  with a min  of 13 and a max of 150 with a mean around 35
#Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
#13.00   25.00   29.00   35.14   35.00  150.00 

#similarly we can look at weoght ina  similar manner with min of 31 max of 130 and a median of 47 
#Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
#31      41      47      50      53     130 


# a description of the range, min, max, and central tendencies will suffice.




# Q2.C Plot the data using the command plot().

plot(kkong)
# Q2.D Describe the results in your own words.

#We can see the x-axis is wieght and the y-axis is height and we while we see an oulier at the top right  graters than 140 height and 120 weight most 
# of the data  is cluster on the bottom left
#* The desciption should include a description of the graph and a description
#* of the data clustered around the bottom left corner 
#* as well as a discussion of the one outlier at the top left.


# Q2.E Run a regression using height as the dependent variable
#      and store the results in 'fit'.  Use the summary() command to see 
#      the results.

fit <- lm(height~weight)
summary(fit)
# Q2.F From the results answer the following (short answer):
#   - What is the coefficient for weight?
#   - Is the coefficient significant?
#   - What does the coefficient mean? In other words, interpret the coefficient.
#   - What is the Adjusted R-squared and what does it mean?

# the detailed data is below but the CO-effieict is 1.3078 which is at the 0.001 significance level 
# this means the for evert one unit change in X Y will change by 1.3078
# Adj r squared is 0.8782 or approx 88% 
#Residuals:
#  Min      1Q  Median      3Q     Max 
-14.219  -7.298  -2.372   8.243  18.706 

#Coefficients:
#  Estimate Std. Error t value Pr(>|t|)    
#(Intercept) -30.2495     5.8203  -5.197 5.13e-05 ***
#  weight        1.3078     0.1085  12.051 2.41e-10 ***
#  ---
#  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
#Residual standard error: 9.646 on 19 degrees of freedom
#Multiple R-squared:  0.8843,	Adjusted R-squared:  0.8782 
#F-statistic: 145.2 on 1 and 19 DF,  p-value: 2.412e-10
#*** END CODING:  Question 2


#*** START CODING:  Question 3

# In this question, we will using the hstarts time series used in Question 1.

# Q3.A  Create a moving average of hstarts using 5 lags and store it in hstartsMA5.

hstartsMA5 <- ma(hstarts,5)


# Q3.B  Create a moving average of hstarts using 15 lags and store it in hstartsMA15.
hstartsMA15 <- ma(hstarts,15)


# RUN the following lines to make a graph.
plot(hstartsMA5, col = 'red')
lines(hstartsMA15, col = 'green')


# Q3.C  Describe the two moving average plots in your own words.

# The MA15 seems to be much smoother than MA5 and we can see less extremes
#*** END CODING:  Question 3


#*** START CODING:  Question 4
# 

# Q4.A Create a simple exponential smoothing series using ses()
#     with h=5 lags and store it in hstartsSES5

hstartsSES5 <- ses(hstarts,h=5)


# Q4.B What is the RMSE?  (Use the accurancy() command.)

accuracy(hstartsSES5)

#RMSE 19.46083
# Q4.C Create a Holt-Winters model using the hw() command and store it in hstartsHWa 
#      using the option : seasonal = "additive". 

hstartsHWa <- hw(hstarts,seasonal = "additive")


# Q4.D Create a Holt-Winters model using the hw() command and store it in hstartsHWm 
#      using the option : seasonal = "multiplicative".

hstartsHWm <- hw(hstarts,seasonal = "multiplicative")


# run the following to create the plot

autoplot(hstarts) +
  autolayer(hstartsHWa, series="HW additive forecasts",
            PI=FALSE) +
  autolayer(hstartsHWm, series="HW multiplicative forecasts",
            PI=FALSE) +
  ggtitle("Housing Starts") +
  guides(colour=guide_legend(title="Forecast"))

# Q4.E Which model (additive or multiplicative) looks better and why?

#The models look pretty similar but we can see the housing starts receding after 1988 and we can see that better with the multiplicative 
# A good answer will describe the two forecast graphs and also describe how the the multiplicative
# forecast will use a percentage of past changes.

#* Sample answer
#* Both models are good possibilities for forecasts as they both exibit the cyclical cycles as well 
#* the downward trend from 1987 onward.  However, the multiplicative mode also seems to dampen the cycles.
#* A visual inspection of the previous 3-4 cycles seem to confirm the dampening of the cycles.

#*** END CODING:  Question 4




