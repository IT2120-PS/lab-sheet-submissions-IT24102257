setwd("C:\\Users\\Sahan Senadheera\\Desktop\\IT24102257 PS Lab6")
#(1)(i)
# Binomial Distribution with n = 50, p = 0.85
#(ii)
1 - pbinom(46, 50, 0.85, lower.tail = TRUE)
# OR
pbinom(46, 50, 0.85, lower.tail = FALSE)

#(2)(i)
# Number of customer calls received per hour
#(ii)
# Poisson distribution with lambda = 12
#(iii)
dpois(15, 12)

