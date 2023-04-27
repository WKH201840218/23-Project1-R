head(cars)
dist <- cars[,2]
dist
hist(dist,
     main='Histogarm for 제동거리',
     xlab = '제동거리',
     ylab = '빈도수',
     border='blue',
     col='green',
     las=2,
     breaks = 5)
     
barplot(table(mcars$cyl),
        main='mtcars',
        col=c('red','green','blue'))

barplot(table(mcars$gear),
        main='mtcars',
        col=rainbow(3),
        horiz=TRUE)
