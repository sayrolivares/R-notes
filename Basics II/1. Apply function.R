#Apply functions are a set of loop functions in R
#The main difference is that apply functions are more efficient than a for loop
#Apply functions require less lines of code and are often faster than a simple loop

#Attach dataset
attach(StockData)

#Visualize the head of the dataset
head(StockData)

#Get help on the appl function
?apply

#Calculate the mean price of each stock
apply(StockData, 2, mean)

#Do the same removing NAs
apply(StockData, 2, mean, na.rm=TRUE)

#Store the mean in an objet called AVG
AVG <- apply(StockData, 2, mean, na.rm=TRUE)
AVG

#Calculate the mean stock price but using colMeans
colMeans(StockData, na.rm=TRUE)

#Find the MAXIMUM stock price, for each stock
apply(StockData, 2, max, na.rm=TRUE)

#Find the 20th and 80th percentile for the stock price
apply(StockData, 2, quantile, probs=c(0.2, .80),
      na.rm=TRUE)

#Create a plot of each column using a "line"
apply(StockData, 2, plot, type="l")

#We can also send the plot function more arguments, such as
#titles, axes labels, and so forth...
apply(StockData, 2, plot, type="l", 
     main="Stock",
     ylab="Price",
     xlab="Day")

#Calculate the sum of each row (margin=1)
apply(StockData, 1, sum, na.rm=TRUE)

#Make a plot of these...
plot(apply(StockData, 1, sum, na.rm=TRUE), type="l",
     ylab="Total Market Value",
     xlab="Day",
     main="Market Trend")

#Add in some coloured points
plot(apply(StockData, 1, sum, na.rm=TRUE),
     pch=16,
     col="blue")