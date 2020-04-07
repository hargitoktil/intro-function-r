luas_lingkaran <- function(r){
  pi <- 3.14
  luas <- pi*r^2
  return (luas)
}

luas_lingkaran(10)
luas_lingkaran(7)


luas_segitiga<-function(alas, tinggi){
  return(alas * tinggi/2)
}

luas_segitiga(10,5)

hw<-function(){
  print("Hello world")
}

hw()