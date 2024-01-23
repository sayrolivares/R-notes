attach(online_retail)
dim(online_retail) #To ask about the dimensions of our data
length(Quantity) #To ask about the number of observations in a vector or variable
Quantity[11:14] #We can take observations from 11 to 14
online_retail[1:14, ] #We can see the dataset from 1 to 14
mean(Quantity[Country == "United Kingdom"])
levels(Country)

Ukdata = online_retail[Country == "United Kingdom", ] #Create a subdataset where the only country is United Kingdom
dim(Ukdata)
Ukdata[1:4, ]
mean(Ukdata$UnitPrice)