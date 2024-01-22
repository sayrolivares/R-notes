#To get the mean of a column, use the dollar sign to extract (variables) the data first:
mean(online_retail$Quantity)
#As opposed to "mean(Quantity)"

#To look at the Quantity, we need to let R know where Quantity can be found
online_retail$Quantity

#Second option is to attach the data
#Pros: We can call in variables by their names and don't use the $ to extract them
#Cons: They're put into R's workspace memory and they can be overwritten more easily as well as they hang around in R's memory until we erase them
attach(online_retail)
mean(Quantity)

#To detach the data we can use detach() function and the Quantity column will not work by itself
detach(online_retail)
Quantity

#Checking type of variable using class command. First, let's recall the names of the variables in this object
names(online_retail)
class(InvoiceNo)
class(StockCode)
class(CustomerID)
levels(CustomerID)
levels(Country)
levels(Quantity)

#Summary of the data
summary(online_retail)

#adding a variable value
x <- c(0,1,1,1,0,0,0,0,0,0)
class(x) #This is because 1 and 0 are counted as numbers, not as indicators for categories
summary(x) #It will calculate numeric variables

#We can convert x to a categorical variable or a factor
x <- as.factor(x)
class(x) #This reports frequencies
summary(x)