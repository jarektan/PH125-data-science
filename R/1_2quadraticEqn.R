# assigning values to variables
a <- 2
b <- -1
c <- -4

print(a)
print(b)
print(c)

solution_1 <- (-b + sqrt(b^2 - 4*a*c))/(2*a)
solution_2 <- (-b - sqrt(b^2 - 4*a*c))/(2*a)

# # function without parentheses ->shows code 
ls
ls()

# #function are evaluated from inside out
log(exp(1))

# #help with function log
?log
args(log)
log(8,base=2)

# #shows all the data sets in the library
data()
# 
#-------Assignment 1------
# #variable have to start with a letter. has no space
# Here is how you compute the sum for the first 20 integers
20*(20+1)/2 

# However, we can define a variable to use the formula for other values of n
n <- 20
n*(n+1)/2

n <- 25
n*(n+1)/2

# Below, write code to calculate the sum of the first 100 integers
n <- 100
n*(n+1)/2

n <- 1000
x <- seq(1,n)
sum(x)

log10(sqrt(100))

x <- 5
log10(10^x)
log10(x^10)
log(exp(x))
exp(log(x,base=2))
