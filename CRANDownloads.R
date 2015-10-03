###### - mldr package downloads

library(cranlogs)
dwmldr <- cran_downloads(from = "2015-02-13", to = Sys.Date()-1, package = "mldr")
data <- dwmldr #$downloads[[1]]

plot(data$count, #lwd = 3, lty = 1, pch = 7,
     main = "CRAN downloads for package mldr", xlab = "Date", sub = paste("sum = ", sum(data$count), ", mean =", mean(data$count)),
     ylab = "Number of downloads", xaxt = "n")
axis(1, at = 1:length(data$count), labels = data$date, cex.axis = 0.5, las = 2)
abline(lm(data$count ~ c(1:length(data$count))))

breaks <- seq(1,length(data$downloads),7)
barplot(sapply(1:(length(breaks)-1), function(i) sum(data$downloads[breaks[i]:(breaks[i+1]-1)])))

locator()
