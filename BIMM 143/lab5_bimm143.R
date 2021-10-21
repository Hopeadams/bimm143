#  Class 5 Data Visualization

# Lets start with a scatterplot
# Before I can use it i need to load it up
library(ggplot2)

# Every ggplot has a data + aes + geoms

ggplot(data = cars) +aes(x = speed, y = dist) + geom_point()
ggplot(data = cars) +aes(x = speed, y = dist) + geom_point() + geom_line()
ggplot(data = cars) +aes(x = speed, y = dist) + geom_point() + geom_smooth()
# Change to a linear model
p <- ggplot(data = cars) +aes(x = speed, y = dist) + geom_point() + geom_smooth(method = lm)

p
# Add a title to the plot and x/y labels
p + labs(title = "My Nice Plot", x = "speed (mph)", y = "distance")

# Base graphics is shorter

plot(cars)

# New graph showing anti-viral drug being tested

url <- "https://bioboot.github.io/bimm143_S20/class-material/up_down_expression.txt"
genes <- read.delim(url)
head(genes)
nrow(genes)
colnames(genes)
ncol(genes)
# Access State of Genes 
table(genes$State) 
?round
signif(table(genes$State), digits = 2)
table(genes$State)/ nrow(genes)
table(genes$State)/ nrow(genes) * 100
prec <- table(genes$State)/ nrow(genes) * 100
round(prec, 2)
# Start graphing data
ggplot(genes)
ggplot(genes) + aes(x=Condition1, y=Condition2)
ggplot(genes) + aes(x=Condition1, y=Condition2, col=State) + geom_point()
g <- ggplot(genes) + aes(x=Condition1, y=Condition2, col=State) + geom_point()
g + scale_color_manual(values=c("purple", "grey", "pink"))
# Add additional labels
g + scale_color_manual(values=c("purple", "grey", "pink")) + labs(title="Gene Expression Changes Upon Drug Treatment", x="Control (no drug)", y="Drug Treatment")
