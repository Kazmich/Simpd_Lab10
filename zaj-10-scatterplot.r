library("ggplot2")

df <- as.data.frame(matrix(c(1000, 1300, 1000, 1300, 1200, 1300, 1400, 1200, 1300, 1100,
                             7, 6, 5, 6, 7, 6, 9, 7, 6, 6.5,
                             42, 53, 60, 42, 60, 53, 42, 60, 60, 54,
                             1199, 1399, 799, 1599, 1249, 1249, 3199, 1899, 1079, 1599), 10, 4))
labels <- c("1", "2", "3", "4","5")
result <- c(1, 4, 5, 4, 3, 4, 1, 2, 3, 2)
factors <- factor(result, labels)
df <- cbind(df, factors)
colnames(df) <- c("Speed", "Capacity", "Size", "Price", "Rank")

scatterplot <- ggplot(data=df, aes(x = Speed, y = Price, col = Rank)) + geom_jitter(position = position_jitter(width = 0.2), size=10)
scatterplot <- scatterplot + geom_point(size = 5) + xlab("Speed")+ylab("Price") + labs(colour = "Rank") + ggtitle("Washing Machine's rank depending on price and speed")
scatterplot <- scatterplot + scale_colour_brewer(palette = "Set1") + theme(plot.title = element_text(vjust =+ 2)) + scale_x_continuous(breaks = 1:8)
scatterplot
