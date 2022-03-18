library(dplyr)
library(gridExtra)
data("msleep")

head(msleep,5)

# use both the R base functions and dplyr functions to select a subset of the columns: 
#   (a) a data table contains only the name and the sleep_total column; 
a <- select(msleep,name,sleep_total) 

#   (b) the data table that only excludes the name column.

b <- select(msleep,-name) 

