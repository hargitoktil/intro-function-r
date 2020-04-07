names <- c("Adi","Budi","Cindy","Dedi")
names[1]
names[2:4]
names[c(1,3)]

factor(names)
factor(c("males","females","females","males"))

m = matrix(1:12,nrow = 3)
m
m[4]
m[2,3]


a = array(1:24,c(3,4,4))
a
a[1,3,1]


users <- data.frame(
  name = names,
  gender = c("males","males","females","males"),
  age = c(10,20,30,40)
)

users

users[1]
users[2]
users["name"]
users[c("name","age")]
users[2,]
users[1:2,3]



l <- list(a,names, users)
l
