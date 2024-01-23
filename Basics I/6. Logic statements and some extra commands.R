#Logic statements
attach(online_retail)
names(online_retail)
head(online_retail)

#How to use logic statements and turn them into numeric indicators and bind columns together
Quantity[1:5]

#0 and 1 indicators  with as.numeric
temp2 = as.numeric(Quantity>4)
temp2[1:5]

#We can use multiple logical statements to have a logical vector answering multiple questions
france_data = Country == "France" & UnitPrice > 3
france_data[1:5]

#We can attach vectors or matrices in a colum-wise fashion
Moredata = cbind(online_retail, france_data)
Moredata[1:5, ]

#Remove all objects from all R's workspace
rm(list = ls())