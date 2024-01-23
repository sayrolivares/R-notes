#Import Data, Copy from Excel to R CSV & TXT Files
data1 <- read.csv(file.choose(), header = T)
data2 <- read.delim(file.choose(), header=T)
#To import files separated by tabs
data3 <- read.table(file.choose(), header=T, sep="\t")


#Or directly to choose a specific file:

read.table(file="C:\Users\users\...\online_retail.csv", header=TRUE, sep="\t")
#sep command will be specify by how you want to read the data, if it's either by commas, tabs, spaces etc...