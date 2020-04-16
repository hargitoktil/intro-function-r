##install.packages("ggplot2")
library(ggplot2)
library(dplyr)

dataset <- read.csv("../skillacademy/data/Assessment Statistics foundation_ Dataset_superstore_simple.csv")

##Scatter
ggplot(dataset, aes(sales, profit)) + geom_point()

##Bar 
ggplot(dataset, aes(x= category, y = quantity)) + geom_bar(stat="identity", fill="blue", width = 0.5 )
ggplot(dataset, aes(x= category, y = quantity)) + geom_bar(stat="identity", width = 0.5, aes(fill=segment))

sales_per_segment <- dataset %>%
  group_by(segment) %>% summarise(total_sales = sum(sales))

ggplot(sales_per_segment, aes(x="",y= total_sales, fill=segment)) + 
  geom_bar(stat = "identity", width=1) + coord_polar("y", start = 0)

