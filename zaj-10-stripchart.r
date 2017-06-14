library("ggplot2")

df <- as.data.frame(matrix(c(1000, 1300, 1000, 1300, 1200, 1300, 1400, 1200, 1300, 1100,
                             7, 6, 5, 6, 7, 6, 9, 7, 6, 6.5,
                             44, 53, 60, 42, 60, 53, 58, 55, 44, 54,
                             1199, 1399, 799, 1599, 1249, 1249, 3199, 1899, 1079, 1599), 10, 4))
labels <- c("1", "2", "3", "4", "5")
result <- c(1, 4, 5, 4, 3, 4, 1, 2, 3, 2)
factors <- factor(result, labels)
df <- cbind(df, factors)
colnames(df) <- c("Speed", "Capacity", "Size", "Price", "Rank")

stripchart <- ggplot(df, aes(Size, Price, col = factor(Rank))) + geom_jitter(position = position_jitter(width = 0.2), size=10)
stripchart <- stripchart + ylab("Price") + xlab("Width") + labs(colour = "Rank")
stripchart <- stripchart + ggtitle("Washing machine Price to Width and Rank") + theme(plot.title = element_text(vjust =+ 2))
stripchart
