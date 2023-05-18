install.packages('treemap')
library(treemap)

data(GIN2014)
head(GIN2014)

treemap(GIN2014,
        index=c('continent','iso3'),
        vSize='population',
        vColor='GNI',
        type='value',
        bg.labels='yellow',
        title="World's GNI")
