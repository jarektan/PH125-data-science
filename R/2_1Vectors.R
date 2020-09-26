rm(list = ls())
# We may create vectors of class numeric or character with the concatenate function
codes <- c(380, 124, 818)
country <- c("italy", "canada", "egypt")

# We can also name the elements of a numeric vector
# Note that the two lines of code below have the same result
codes <- c(italy = 380, canada = 124, egypt = 818)
codes <- c("italy" = 380, "canada" = 124, "egypt" = 818)

# We can also name the elements of a numeric vector using the names() function
codes <- c(380, 124, 818)
country <- c("italy","canada","egypt")
names(codes) <- country

# create sequence
a<-seq(1,10,2)
b<-1:10
identical(a,b) #false because one is num, other is int
x <- seq(0, 100, length.out = 5) #increasing same amount, vector length must be 5

# Using square brackets is useful for subsetting to access specific elements of a vector
codes[2]
codes[c(1,3)]
codes[1:2]

# If the entries of a vector are named, they may be accessed by referring to their name
codes["canada"]
codes[c("egypt","italy")]

#R coerced the data into a character
x <- c(1, "canada", 3)
class(x)

#change class to character and back to numeric
x<-1:5
y<-as.character(x)
y
as.numeric(y)
#NA occurs when R doesn't know what to do, becomes missing value
x<- c("1","b","3")
as.numeric(x)

#----assignment1---
temp <- c("Beijing"=35, "Lagos"=88, "Paris"=42, "Rio de Janeiro"=84, "San Juan"=81, "Toronto"=30)
city<-names(temp)
city
#------------
x <- seq(1, 10, length.out = 100) 
class(x) #num
x <- seq(1, 10) 
class(x) #int
#------------
class(1) #num
class(1L) #int

#------------
# Define the vector x
x <- c(1, 3, 5,"a")

# Note that the x is character vector
x

# Use `as.numeric` to coerce `x` to a numeric vector. Be sure to reassign the new vector as `x`.
x<-as.numeric(x)
