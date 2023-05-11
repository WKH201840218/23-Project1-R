z1 <- c(1,2,3,NA,6,NA,7)
z2 <- c(4,5,2,NA,7,NA,8)
z1[is.na(z1)] <- 0
z1
z3 <- as.vector(na.omit(z2))
z3
