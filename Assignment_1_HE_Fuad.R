# In this assignment, you are asked to use some of the 
# commands demonstrated in the video examples to complete an
# exercise in R.
#
# You will then be asked to interpret the # results.  
#
# For this assignment, you may use any resources necessary
# to be able to exectute the code.  However, the interpretation 
# should reflect your own thinking.
#
# You are to work on the problem alone, without help 
# from any other person.
#
###############################################################
install.packages("numbers")
library(numbers)
# INSTRUCTIONS:  Enter your code between the comments line 
# as directed.  Comments begin with a hashtag '#'.

# For example

### Start Code

### End Code

# If you are asked to interpret results, make sure to put your
# answers in a comment line.

################################################################ 

# Please make sure you have installed all necessary pacakages and 
# called on the required libraries

################################################################

# Create a project titled R_Workbook_LastName_FirstName. 
# Any files/data created during this assignment will be stored 
# within this workbook.

################################################################

# Open a file within the project and save the same under
# the name the R_Workbook.

################################################################

# Question 1 -	Within this file, perform the following 
# arithmetic operations on a column vector  
# a.	Add 8, 54, 26, 91, 152 and 271
# b.	Create a column vector of the first 10 odd numbers and find the sum
# c.	Create a column vector of the first 5 primes numbers and 
#     find the product
# d.	Calculate the 5th power of 23
# e.	Add the 4th powers of 5, 13, 21 and 29 (Hint: Create a vector first)

# a.	Add 8, 54, 26, 91, 152 and 271


c=c(8+54+26+91+152+271)
c
#> c
#[1] 602

# a.	Add 8, 54, 26, 91, 152 and 271
# b.	Create a column vector of the first 10 odd numbers and find the sum
oddnumv=seq(1,20,by=2)
sum(oddnumv)


# c.	Create a column vector of the first 5 primes numbers and 
#     find the product
# Product of Primes
#
PrimeV <- c(Primes(11))
prod(PrimeV)

# d.	Calculate the 5th power of 23

23^5

# e.	Add the 4th powers of 5, 13, 21 and 29 (Hint: Create a vector first)

powervec <- c(5,13,21,29)

powervec^4

################################################################

# Questions 2 - Within the same file, create the vector and use 
# appropriate functions to calculate the following -
# a.	The mean of 23, 43, 56, 83, 182 and 1982
# b.	The standard deviation of 33, 53, 66, 73, 162 and 982
# c.	The log(base e) of each of the following numbers : 24, 34, 57, 82 
#     and 100
# d.	The exponential of 3, 7, 11, 14 and 18

################################################################

# a.	The mean of 23, 43, 56, 83, 182 and 1982

meanvec <-c(23,43,56,83,182,1982)
mean(meanvec)


# b.	The standard deviation of 33, 53, 66, 73, 162 and 982
stddevvec <- c(33, 53, 66, 73, 162 , 982)
sd(stddevvec)

# c.	The log(base e) of each of the following numbers : 24, 34, 57, 82 
#     and 100
#Base e is default

logvec <- c(24, 34, 57, 82,100)
log(logvec)
#Base e is default

# d.	The exponential of 3, 7, 11, 14 and 18
expvec <- c(3, 7, 11, 14, 18)
exp(expvec)

# Question 3 - Within the same file, create two scalar variables 
# x and y, assigning them values of 3 and 10 respectively. Using 
# the two variables perform the following operations (use 
# appropriate functions wherever necessary)-
# a.  Add the two variables
# b.  Calculate the absolute value of the difference between the two 
#     variables
# c.  Calculate the product of the two variables
# d.  Mean of the variables
# e.  Calculate yth power of x and xth power of y
# f.  Calculate the square root of the product of the two variables


################################################################

# Question 4 -	Within the same file, load two column vectors - A and B.

#     A <- c(8,40,10)
#     B <- c(21,25,15)

# Perform the following operations on/using the two vectors (use 
# appropriate functions wherever necessary)


# a.	Add the number 100 to both the vectors. What do you notice 
#     about the resulting vector?
# b.	Add the vectors A and B. What do you notice about the resulting 
#     vector? How is it different from the result in the above problem?
# c.	Multiply each of the vectors by 3. What do you notice about the 
#     resulting vector?
# d.	Calculate the product of the two vectors. How is the multiplication
#     carried out? 

################################################################

# Question 5 -	Load a 3rd vector - C

#       C <- c(1,32,49)

# Create a 3x3 dataframe by combining the 3 vectors - A, B and C - 
# and assign it to "df". Using the created dataframe, 
# perform the following operations:

# a.	Extract the 2nd column of df. What do you notice about this?
# b.	Extract the 1st and 3rd row of df.
# c.	Extract the element from the 2nd row and 3rd column of df.
# d.  Extract all the diagonal element from df and assign them to the
#     variable D.


################################################################

# Question 6 - This section will test your basic understanding and 
# execution of conditional and loop statements. 

# a.  Write an R script using the if statement that will calculate the 
#     square root of a number only if it is positive.
#     (Run the code for the following values of x : 89, -291, -32, 736)
# b.  Write an R script using the for loop to print the square of each
#     numbers in the following column vector.
# c.  Write an R script using the while loop to print the highest power
#     of 5 under 20000
# d.  Write an R script to create a function - gallonstoliters - which 
#     converts the numerical input - a measurement in gallons - to
#     liters. Call the function to convert 5 gallons to liters.
#     (1 gallon = 3.7854 liters) 

################################################################
