setwd("C:\\Users\\Sahan Senadheera\\Desktop\\IT24102257 PS lab5")
#Exercise
#(1)
Delivery_Times <- read.table("Exercise - Lab 05.txt", header = TRUE, sep = ",")
#(2)
hist(Delivery_Times$Delivery_Time_.minutes., main = "Histogram for Delivery Times", breaks = seq(20, 70, length = 10), right = FALSE)
#(3)
summary(Delivery_Times$Delivery_Time_.minutes.)
mean(Delivery_Times$Delivery_Time_.minutes.)
median(Delivery_Times$Delivery_Time_.minutes.)
#The distribution of delivery times is approximately symmetric,
#but with a slight positive skew (a longer right tail).
#(4)
delivery_hist <- hist(Delivery_Times$Delivery_Time_.minutes., breaks = seq(20, 70, length = 10), right = FALSE, plot = FALSE)
delivery_breaks <- delivery_hist$breaks
delivery_freq <- delivery_hist$counts
delivery_cumfreq <- cumsum(delivery_freq)
delivery_new <- c()
for (i in 1:length(delivery_breaks)) {
  if (i == 1) {
    delivery_new[i] = 0
  } else {
    delivery_new[i] = delivery_cumfreq[i-1]
  }
}
plot(delivery_breaks, delivery_new, type = 'l', main = "Cumulative Frequency Polygon for Delivery Times", xlab = "Delivery Time", ylab = "Cumulative Frequency", ylim = c(0, max(delivery_cumfreq)))

