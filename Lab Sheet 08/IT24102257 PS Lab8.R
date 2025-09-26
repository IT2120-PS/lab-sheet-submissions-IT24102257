setwd("C:\\Users\\Sahan Senadheera\\Desktop\\IT24102257 Lab8 ps")
data <- read.table("Data - Lab 8.txt", header = TRUE)
fix(data)
attach(data)

# Question 01
# Commands "mean" & "var" will compute the mean and the variance for data.
popmn <-mean(Nicotine)
popmn
popvar <- var(Nicotine)
popvar

# Question 02
# First create null vectors to store sample data sets.
samples <- c()
n <- c()
# The "for" loop will be used to create and assign samples of size 5 for "samples" variable created above.
# Using "sample" command we can draw a random sample either with replacement or without replacement.
# By making "replace" argument as TRUE we can create samples with replacement.
for(i in 1:30){
  s <- sample(Nicotine,5,replace = TRUE)
  samples <- cbind(samples,s)
  n <- c(n,paste("S",i))
}
# Assign column names for each sample created. Names have stored earlier under "n" variable.
colnames(samples) = n
# Using "apply" commands we can ask to calculate any function such as mean, variance, etc. row wise or
# column wise in a matrix.
#Here, considering the second argument as "2" we can calculate either mean/variance column wise
#which stored earlier in "samples" variable which is a matrix
s.means <- apply(samples,2,mean)
s.means
s.vars <- apply(samples,2, var)
s.vars

##Question 03
#Following commands will calculate mean and variance of samples means stored in "s.means" variable.
samplemean <- mean(s.means)
samplemean
samplevars <- var(s.means)
samplevars

#Question 04
#Compare the population mean and mean of sample means.
popmn
samplemean

# Question 05
# Compare the population variance and variance of sample means.
truevar = popvar/5
truevar
samplevars

#EXCERSICE
data <- read.table("Exercise - LaptopsWeights.txt", header = TRUE)
fix(data)
attach(data)

pop_mean <- mean(Weight.kg.)
pop_mean
pop_sd <- sd(Weight.kg.)
pop_sd

samples <- c()
sample_names <- c()

for (i in 1:25) {
  s <- sample(Weight.kg., 6, replace = TRUE)
  samples <- cbind(samples, s)
  sample_names <- c(sample_names, paste('Sample', i))
}

colnames(samples) <- sample_names
sample_means <- apply(samples, 2, mean)
sample_means
sample_sds <- apply(samples, 2, sd)
sample_sds

mean_of_sample_means <- mean(sample_means)
mean_of_sample_means
sd_of_sample_means <- sd(sample_means)
sd_of_sample_means
