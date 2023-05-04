iris.2 <- iris[,3:4]
group <- as.numberic(iris$Species)
color <- c('red','green', 'blue')
plot(iris.2,
     main='iris plot',
     pch=c(group),
     col=color[group])
legend(x='bottomright',
       legend = levels(iris$Species),
       col = c('red','green', 'blue'),
       pch=c(1:3))