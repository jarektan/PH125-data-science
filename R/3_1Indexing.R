rm(list = ls())
library(dslabs)
data(murders)

# defining murder rate as before
murder_rate <- murders$total / murders$population * 100000
# creating a logical vector that specifies if the murder rate in that state is less than or equal to 0.71
index <- murder_rate <= 0.71
# determining which states have murder rates less than or equal to 0.71
murders$state[index]
# calculating how many states have a murder rate less than or equal to 0.71
sum(index)

# creating the two logical vectors representing our conditions
west <- murders$region == "West"
safe <- murder_rate <= 1
# defining an index and identifying states with both conditions true
index <- safe & west
murders$state[index]

#------
x <- c(FALSE, TRUE, FALSE, TRUE, TRUE, FALSE)
which(x)    # returns indices that are TRUE
which(!x)

# to determine the murder rate in Massachusetts we may do the following
index <- which(murders$state == "Massachusetts")
# index <- murders$state == "Massachusetts"
index
murders$state[index]
murder_rate[index]

# to obtain the indices and subsequent murder rates of New York, Florida, Texas, we do:
index <- match(c("New York", "Florida", "Texas"), murders$state)
index
murders$state[index]
murder_rate[index]

x <- c("a", "b", "c", "d", "e")
y <- c("a", "d", "f")
y %in% x

# to see if Boston, Dakota, and Washington are states
c("Boston", "Dakota", "Washington") %in% murders$state

#----------Assignment 6----------
# Store the murder rate per 100,000 for each state, in `murder_rate`
murder_rate <- murders$total / murders$population * 100000

# Store the `murder_rate < 1` in `low` 
low<-murder_rate < 1
which(low)
murders$state[which(low)]
# Create a vector ind for states in the Northeast and with murder rates lower than 1.
ind<- low & murders$region == "Northeast"
# Names of states in `ind` 
murders$state[ind]

# Compute the average murder rate using `mean` and store it in object named `avg`
avg<-mean(murder_rate)

# How many states have murder rates below avg ? Check using sum 
sum(murder_rate<avg)

abbs<-c('AK','MI','IA')
ind<-match(abbs,murders$abb)
ind
murders$state[ind]

abbs<-c('MA', 'ME', 'MI', 'MO', 'MU')
ind<-which(!abbs %in% murders$abb)
abbs[ind] 
