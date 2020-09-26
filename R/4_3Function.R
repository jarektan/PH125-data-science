# example of defining a function to compute the average of a vector x
avg <- function(x){
  s <- sum(x)
  n <- length(x)
  s/n
}

# we see that the above function and the pre-built R mean() function are identical
x <- 1:100
identical(mean(x), avg(x))

# variables inside a function are not defined in the workspace
s <- 3
avg(1:10)
s

# # the general form of a function
# my_function <- function(VARIABLE_NAME){
#   perform operations on VARIABLE_NAME and calculate VALUE
#   VALUE
# }

# functions can have multiple arguments as well as default values
avg <- function(x, arithmetic = TRUE){
  n <- length(x)
  ifelse(arithmetic, sum(x)/n, prod(x)^(1/n))
}

#------assignment--------
# Create function called `sum_n`
sum_n<- function(n){
  y <- sum(1:n)
  y
}
# Use the function to determine the sum of integers from 1 to 5000
sum_n(5000)
#--------------
# Create `altman_plot` 
altman_plot<- function(x, y){
  plot(x+y, y-x)
}