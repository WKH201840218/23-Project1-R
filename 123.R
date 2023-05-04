vars <- c('mpg','dist','drat','wt')
target <- mtcars[,vars]
head(target)
plot(target,main='Multi plots')