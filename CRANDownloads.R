###### - mldr package downloads

library(cranlogs)
dwmldr <- cran_downloads(from = "2015-02-13", to = Sys.Date(), package = "mldr")
data <- dwmldr$downloads[[1]]

plot(data$downloads, type = "b", lwd = 3, lty = 1, pch = 7,
     main = "CRAN downloads for package mldr", xlab = "Date", sub = paste("sum = ", sum(data$downloads), ", mean =", mean(data$downloads)),
     ylab = "Number of downloads", xaxt = "n")
axis(1, at = 1:length(data$downloads), labels = data$day, cex.axis = 0.5, las = 2)
