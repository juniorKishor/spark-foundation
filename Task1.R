# Task 1 : predict score of student on basis of study hours
# presented by RICHA KISHOR
 # first we import csv file in R
xy<- read.csv(file.choose())  
print(xy)
install.packages("dplyr")  # Install package dplyr for data manipulation
library(dplyr)
head(xy)          #it return 1st 6 rows of data set         
tail(xy)              #it return last 6 rows of data set
summary(xy)
count(xy)
View(xy)
nrow(xy)
ncol(xy)
colnames(xy)
# Visualize regression graphically
hours <- xy$Hours
scores <- xy$Scores
require(graphics)
plot(hours,scores)
plot(hours,scores, pch=16, cex=1, col= 'blue', 
     main = 'study hours vs scores', xlab = 'hours', 
     ylab = 'scores')
 relation<- lm(scores~hours)          
summary(relation)
attributes(relation)
coef(relation)
abline(relation, col='red')
# predict score when student study for 9.25 hours 
df<- data.frame(hours=9.25)             
result<- predict(relation,df)
print(result)
93.20554 is our result



     
     