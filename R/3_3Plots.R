rm(list = ls())
library(dslabs)
data("murders")
murders <- mutate(murders, rate = total / population * 100000)

# a simple scatterplot of total murders versus population
x <- murders$population /10^6
y <- murders$total
plot(x, y)

# a histogram of murder rates
hist(murders$rate)
murders$state[which.max(murders$rate)]

# boxplots of murder rates by region
boxplot(rate~region, data = murders)

#--------Assignment 8 --------
population_in_millions <- murders$population/10^6
total_gun_murders <- murders$total

plot(population_in_millions, total_gun_murders)

# Transform population using the log10 transformation and save to object log10_population
log10_population<- log10(murders$population)

# Transform total gun murders using log10 transformation and save to object log10_total_gun_murders
log10_total_gun_murders <- log10(total_gun_murders)

# Create a scatterplot with the log scale transformed population and murders 
plot(log10_population, log10_total_gun_murders)

#------Assessment3---------
library(dslabs)
data(heights)
options(digits = 3)    # report 3 significant digits for all answers
ind<-which(heights$height>mean(heights$height))
ind2<-which(heights$height>mean(heights$height) & heights$sex=="Female")
mean(heights$sex=="Female")

a<-min(heights$height)
index <- match(min(heights$height), heights$height)
heights$sex[index]
b<-max(heights$height)

x<-min(heights$height):max(heights$height)
z<-sum(!x %in% heights$height)

heights2 <- mutate(heights, ht_cm = height*2.54)
heights2$ht_cm[18]
mean(heights2$ht_cm)
ind<-heights2$sex=="Female"
sum(ind)
mean(heights2$ht_cm[ind])
#--------------------
data(olive)
head(olive)

x <- olive$palmitic
y <- olive$palmitoleic
plot(x, y)

hist(olive$eicosenoic)
boxplot(olive$palmitic~olive$region, data = olive)

