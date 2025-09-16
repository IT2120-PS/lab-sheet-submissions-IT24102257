setwd("C:\\Users\\Sahan Senadheera\\Desktop\\IT24102257 PS Lab7")
#Excersise
#(1)
# X ~ Uniform(0, 40)
# P(10 <= X <= 25) = P(X <= 25) - P(X <= 10)
punif(25, min = 0, max = 40, lower.tail = TRUE) - punif(10, min = 0, max = 40, lower.tail = TRUE)

#(2)
# X ~ Exponential(λ = 1/3)
# P(X <= 2)
pexp(2, rate = 1/3, lower.tail = TRUE)

#(3)
# Part i: P(X > 130)
1 - pnorm(130, mean = 100, sd = 15, lower.tail = TRUE)
# OR:
pnorm(130, mean = 100, sd = 15, lower.tail = FALSE)

# Part ii: IQ score for 95th percentile (P(X <= b) = 0.95)
qnorm(0.95, mean = 100, sd = 15, lower.tail = TRUE)



#Labsheet Given Codes
#(1)
# Part i: P(X <= 10)
punif(10, min = 0, max = 30, lower.tail = TRUE)
# Part ii: P(X > 20)
1 - punif(20, min = 0, max = 30, lower.tail = TRUE)
# OR:
punif(20, min = 0, max = 30, lower.tail = FALSE)
#(2)
# Part i: P(X <= 3)
pexp(3, rate = 0.5, lower.tail = TRUE)
# Part ii: P(X > 4)
1 - pexp(4, rate = 0.5, lower.tail = TRUE)
# OR:
pexp(4, rate = 0.5, lower.tail = FALSE)
# Part iii: P(2 < X < 4)
pexp(4, rate = 0.5, lower.tail = TRUE) - pexp(2, rate = 0.5, lower.tail = TRUE)
#(3)
# Part i: P(X >= 37.9)
1 - pnorm(37.9, mean = 36.8, sd = 0.4, lower.tail = TRUE)
# Part ii: P(36.4 < X < 36.9)
pnorm(36.9, mean = 36.8, sd = 0.4, lower.tail = TRUE) - pnorm(36.4, mean = 36.8, sd = 0.4, lower.tail = TRUE)
# Part iii: Find b such that P(X < b) = 0.012
qnorm(0.012, mean = 36.8, sd = 0.4, lower.tail = TRUE)
# Part iv: Find b such that P(X > b) = 0.01
qnorm(0.01, mean = 36.8, sd = 0.4, lower.tail = FALSE)
