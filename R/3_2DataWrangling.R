rm(list = ls())
# installing and loading the dplyr package
install.packages("dplyr")
library(dplyr)

# adding a column with mutate
library(dslabs)
data("murders")
murders <- mutate(murders, rate = total / population * 100000)

# subsetting with filter
filter(murders, rate <= 0.71)

# selecting columns with select
new_table <- select(murders, state, region, rate)
filter(new_table, rate <= 0.71)

# using the pipe
murders %>% select(state, region, rate) %>% filter(rate <= 0.71)

#-------------
# creating a data frame with stringAsFactors = FALSE
grades <- data.frame(names = c("John", "Juan", "Jean", "Yao"), 
                     exam_1 = c(95, 80, 90, 85), 
                     exam_2 = c(90, 85, 85, 90),
                     stringsAsFactors = FALSE)
class(grades$names)

#----------Assignment7 --------------
# Note that if you want ranks from highest to lowest you can take the negative and then compute the ranks 
x <- c(88, 100, 83, 92, 94)
rank(-x)

# Defining rate
rate <-  murders$total/ murders$population * 100000

# Redefine murders to include a column named rank
# with the ranks of rate from highest to lowest
murders <- mutate(murders, rank = rank(-rate))
select(murders, state, abb)
filter(murders, rank<=5)

# Use filter to create a new data frame no_south
no_south <- filter(murders, region != "South")
# Use nrow() to calculate the number of rows
nrow(no_florida)

#----------
# Create a new data frame called murders_nw with only the states from the northeast and the west
murders_nw<- filter(murders, region %in% c("Northeast", "West"))
# Number of states (rows) in this category 
nrow(murders_nw)
#----------

my_states<-filter(murders, rate<1&region %in% c("Northeast", "West"))
select(my_states,state,rate,rank)

murders%>%mutate(rate = total / population * 100000, rank = rank(-rate))%>%filter(region %in% c("Northeast", "West") & rate < 1)%>% select(state,rate,rank)
my_states<-murders%>%mutate(rate = total / population * 100000, rank = rank(-rate))%>%filter(region %in% c("Northeast", "West") & rate < 1)%>% select(state,rate,rank)
