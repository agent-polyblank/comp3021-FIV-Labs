library(dplyr)
library(ggplot2)
#iris is a core dataset and can be loaded like this
data(iris)
# can look at the first 5 entries
head(iris, 5)


# select(data,field_1,field_2...,field_N)

# 1) Scatter plot that visualizes the relationship between Sepal Width and Sepal Length;

# plot one liner using pipe symbol
# length_width <- select(iris,Sepal.Length,Sepal.Width) %>% plot(xlab="Sepal Length",ylab="Sepal Width")

# https://bookdown.org/dli/rguide/scatterplots-and-best-fit-lines-two-sets.html



#R way of doing things
# sepal_length_width <- plot(iris$Sepal.Width ~ iris$Sepal.Length,xlab="Sepal Width",ylab="Sepal Length")
# abline(lm(iris$Sepal.Width ~ iris$Sepal.Length), col = "red")

petal_length_width <- plot(iris$Petal.Width ~ iris$Petal.Length,xlab="Petal Width",ylab="Petal Length",)
abline(lm(iris$Petal.Width ~ iris$Petal.Length), col = "red")


# write to pdf
pdf(file="./lab-plots.pdf")

par(mfrow=c(2,2))

# GGplot2 way of doing things

ggplot(data=iris,aes(x=Sepal.Width,y=Sepal.Length,colour=Species)) + geom_point() + stat_smooth(method='lm') + labs(x="Sepal Width",y="Sepal Length",title = "Scatter plot that visualizes the relationship between Sepal Width and Sepal Length")

ggplot(data=iris, aes(x=Sepal.Width, y=Species,colour=Species)) + geom_boxplot() + labs(x="Sepal Width",y="Sepal Length",title = "Box plot that visualizes the median and variance of Sepal Lengths across different species;")

ggplot(data=iris, aes(x=Sepal.Width,colour=Species)) + geom_histogram()

dev.off()

