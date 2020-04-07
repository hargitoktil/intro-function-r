dataset <- read.csv("../skillacademy/data/Assessment Statistics foundation_ Dataset_superstore_simple.csv")

summary(dataset)
head(dataset, 10)
nrow(dataset)
ncol(dataset)

write.csv(dataset,"dataset_new.csv")

install.packages("tidyverse")
library(tidyverse)
library(dplyr)

glimpse(dataset)
dataset_result <- select(dataset, -c(profit,sub_category))
select(dataset_result, c(order_id, sales, customer_id)) %>% glimpse()

filter(dataset, segment != "Consumer" | profit > 0)

dataset_result <- mutate(dataset, avg_price = sales / quantity)

dataset1 <- dataset %>% 
  filter(segment == "Consumer") %>% 
  mutate(avg_price  = sales/quantity) %>% 
  select(order_id, order_date, sales, avg_price)
