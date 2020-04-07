library(dplyr)
library(tidyverse)

dataset <- read.csv("../skillacademy/data/Assessment Statistics foundation_ Dataset_superstore_simple.csv")

glimpse(dataset)

dataset %>% 
  group_by(segment, category) %>% 
  summarise(total_sales = sum(sales), 
            avg_sales=mean(sales), 
            min_quantity = max(quantity),
            n_order = n())
data_a <- dataset %>% 
  filter(segment == "Corporate") %>%
  select(order_id, order_date, segment, category, sub_category, sales) %>%
  head(10)

data_b <- dataset %>% 
  filter(category == "Technology") %>%
  select(order_id, order_date, segment, category, sub_category, sales) %>%
  head(9)

### GABUNG BERDASArKAN BArIS
intersect(data_a, data_b)
bind_rows(data_a, data_b)
setdiff(data_a, data_b)
setdiff(data_b, data_a)

### GABUNG BERDASArkaN KOLOM
data_c <- data_a %>% select(c(order_id, sub_category, segment, sales))
data_d <- data_b %>% select(c(order_id, sub_category, category, order_date))
data_c
data_d
 
bind_cols(data_c, data_d) # error, barisnya harus sama
data_c <- data_c %>% head(9)

bind_cols(data_c, data_d) # bisa tapi salah, karena sebenarnya beda baris

inner_join(data_c, data_d) #benar, hanya baris yang matching 
full_join(data_c, data_d) #semua dipillih, meskipun isinya NA

left_join(data_c, data_d) # semua isi dari kirinya, data_c dalam hal ini kirinya, dipasangkan ke data_d
right_join(data_c, data_d)
