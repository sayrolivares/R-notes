#identifying duplicates in a dataset

#install janitor
install.packages("janitor")
library(janitor)

#Some prerequisites
attach(LungCapData)
names(LungCapData)
summary(LungCap)

#Identify all duplicates in a data set or column (dataset, col1)
get_dupes(LungCapData)

#remove all duplicate values and return distinct ones
unique(LungCapData)
