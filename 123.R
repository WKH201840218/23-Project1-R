head(cars)
dist <- cars[,2]
dist
hist(iris$Sepal.Length,
     main = 'Sepal.Length',
     col='orange')
     
barplot(table(mcars$cyl),
        main='mtcars',
        col=c('red','green','blue'))

barplot(table(mtcars$gear),
        main='mtcars',
        col=rainbow(3),
        horiz=TRUE)

pie(table(mtcars$cyl),
    main='mtcars',
    col=topo.colors(3),
    radius = 2)

par(mfrow=c(1,1), mar=c(5,4,4,2)+.1)