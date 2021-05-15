         

         # this is task 2 (From the given 'Iris' dataset, predict the optimum number of clusters 
          # and represent it visually)
     # presented by RICHA KISHOR
#  for this first we require dataset name 'iris'

require(datasets)
df<-iris
summary(iris)
head(iris)
tail(df)
View(iris)
install.packages("dplyr")
library(dplyr)
 count(df)
iris.features <- iris
iris.features$Species <- NULL    #we use this function to ignore species column from dataset
View(iris.features)
library(stats)
results <- kmeans(iris.features, 3)    #we can use 'kmeans' function only on numeric
print(results)
results$size
results$cluster
results$centers
table(iris$Species, results$cluster)
x<- iris
library(cluster)            #for cluster analysis we need cluster package
clusplot(x= iris, clus = results$cluster, lines = 0, shade = TRUE, labels = 4, plotchar = TRUE, span= TRUE)

