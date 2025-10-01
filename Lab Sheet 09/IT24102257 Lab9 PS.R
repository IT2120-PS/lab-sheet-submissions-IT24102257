setwd("C:\\Users\\Sahan Senadheera\\Desktop\\IT24102257 PS Lab9")

#Q1
x <- c(3, 7, 11, 0, 7, 0, 4, 5, 6, 2)
t.test(x, mu = 3)

#Q2
Weight <- c(17.6, 20.6, 22.2, 15.3, 20.9, 21.0, 18.9, 18.9, 18.9, 18.2)
t.test(Weight, mu = 25, alternative = "less")
res <- t.test(Weight, mu = 25, alternative = "less")
res$statistic
res$p.value
res$conf.int

#Q3
y <- rnorm(30, mean = 9.8, sd = 0.05)
t.test(y, mu = 10, alternative = "greater")

#Excersise
# Part i: Generate random sample
baking_time <- rnorm(25, mean = 45, sd = 2)

# Part ii: One-sample t-test
t.test(baking_time, mu = 46, alternative = "less")
