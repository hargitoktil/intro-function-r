##install.packages("ggplot2")
library(ggplot2)
library(dplyr)

dataset <- read.csv("../skillacademy/data/Assessment Statistics foundation_ Dataset_superstore_simple.csv")

plot1 <- ggplot(dataset, aes(x = sales, y = profit)) + geom_point() +
  geom_smooth(method="lm") +
  labs(title = "Scatterplot Sales vs Profit",
       subtitle = "Based on Dataser Superstore",
       caption = "R Language Tutorial") +
  xlab("Order Sales") + ylab("Order Profit")
  
plot1

plot2 <- plot1 +
  xlim(c(0,7500))+
  ylim(c(-2500,2500))


ggplot(dataset, aes(x = sales, y = profit)) + 
  geom_point(color = "blue") +
  geom_smooth(method="lm") +
  labs(title = "Scatterplot Sales vs Profit",
       subtitle = "Based on Dataser Superstore",
       caption = "R Language Tutorial") +
  xlab("Order Sales") + ylab("Order Profit")  +
  xlim(c(0,7500))+
  ylim(c(-2500,2500))

#warna per category
ggplot(dataset, aes(x = sales, y = profit)) + 
  geom_point(aes(color = category)) +
  geom_smooth(method="lm") +
  labs(title = "Scatterplot Sales vs Profit",
       subtitle = "Based on Dataser Superstore",
       caption = "R Language Tutorial") +
  xlab("Order Sales") + ylab("Order Profit")  +
  xlim(c(0,7500))+
  ylim(c(-2500,2500))

##ukuran bubble
ggplot(dataset, aes(x = sales, y = profit)) + 
  geom_point(aes(color = category), size=4) +
  geom_smooth(method="lm") +
  labs(title = "Scatterplot Sales vs Profit",
       subtitle = "Based on Dataser Superstore",
       caption = "R Language Tutorial") +
  xlab("Order Sales") + ylab("Order Profit")  +
  xlim(c(0,7500))+
  ylim(c(-2500,2500))

#garisnya
ggplot(dataset, aes(x = sales, y = profit)) + 
  geom_point(aes(color = category), size=2) +
  geom_smooth(method="lm", color="red", linetype="dotdash") +
  labs(title = "Scatterplot Sales vs Profit",
       subtitle = "Based on Dataser Superstore",
       caption = "R Language Tutorial") +
  xlab("Order Sales") + ylab("Order Profit")  +
  xlim(c(0,7500))+
  ylim(c(-2500,2500))

#theme
plot3 <- ggplot(dataset, aes(x = sales, y = profit)) + 
  geom_point(aes(color = category), size=4, shape = 18) +
  geom_smooth(method="lm") +
  labs(title = "Scatterplot Sales vs Profit",
       subtitle = "Based on Dataser Superstore",
       caption = "R Language Tutorial") +
  xlab("Order Sales") + ylab("Order Profit")  +
  xlim(c(0,7500))+
  ylim(c(-2500,2500)) +
  theme (
    plot.title = element_text(color='blue', size =15, face="bold"),
    plot.subtitle = element_text(color='blue', size =15, face="italic"),
    legend.position = c(0.8,0.2),
    legend.title = element_text(color = "red", size = 12)
    )
ggsave("tes3.png", plot3)
ggsave("tes2.png", plot2)
ggsave("tes1.png", plot1)

