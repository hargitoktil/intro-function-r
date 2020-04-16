##install.packages("ggplot2")
library(ggplot2)
library(dplyr)

dataset <- read.csv("../skillacademy/data/Assessment Statistics foundation_ Dataset_superstore_simple.csv")

dataset$order_date = as.Date(dataset$order_date)

dataset$order_month = as.Date(cut(dataset$order_date, breaks = "month"))

ggplot(dataset, aes(x=order_month, y=sales)) + stat_summary(fun.y = sum, geom="line")

montly_sales <- dataset %>% group_by(order_month) %>%
  summarise(sales = sum(sales))
ggplot(montly_sales, aes(x=order_month, y = sales)) + geom_line() + geom_point(col= "red")
