combn(1:5,4)

x <- c("orange", "red", "blue", "yellow")
com <- combn(x,2)

for(i in 1:ncol(com)) {
  cat(com[,i], "\n")
}

agee <- aggregate(mtcars, by=list(cyl=mtcars$cyl, vs=mtcars$vs),FUN = max())