library(dplyr)
library(ggplot2)
#iris is a core dataset and can be loaded like this
data(iris)
# can look at the first 5 entries
head(iris, 5)


# select(data,field_1,field_2...,field_N)


# 1) Scatter plot that visualizes the relationship between Sepal Width and Sepal Length;
# length_width <- select(iris,Sepal.Length,Sepal.Width) %>% plot(xlab="Sepal Length",ylab="Sepal Width")

length_width <- plot(iris$Sepal.Length ~ iris$Sepal.Width,xlab="Sepal Length",ylab="Sepal Width")
abline(lm(iris$Sepal.Length ~ iris$Sepal.Width), col = "red")


