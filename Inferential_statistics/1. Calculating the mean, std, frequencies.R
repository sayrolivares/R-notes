#Calculating mean, frequencies and more

#Some prerequisites
attach(LungCapData)
names(LungCapData)
summary(LungCap)

#We will be working with Smoke categorical variable
#they can be summarized using a frequency or a proportion

table(Smoke) #This produces a frequency

#proportion:
table(Smoke)/725

#Length can be used to let us know how many observations we have
#by variable
length(Smoke)

#Creating a table of proportions by dividing our table by the
#length of the variable Smoke
table(Smoke)/length(Smoke) #this guards us against typos, good practice

#Contigency table or 2 way table:
table(Smoke, Gender)

##numeric variable: Lung capacity
#We can calculate the arithmetic mean with the mean command
mean(LungCap)
mean(LungCap, trim=0.10) #Trim will remove the desired percent
#Of observations on both top and bottom

#Calculating the median
median(LungCap)

#The variance of a variable
var(LungCap)

#Standard deviation
sd(LungCap)
sqrt(var(LungCap))

#finding the variance by taking the standard deviation and square it
sd(LungCap)^2

#min and max amount
min(LungCap)
max(LungCap)

#finding the range of the variable
range(LungCap)

#quantiles or percentiles
quantile(LungCap, 
         probs=c(0.20, 0.50, 0.90)) #probs lets R know which specific
#percentile or quantile we would like calculated

#Sum the observed values for a variable
sum(LungCap)

#Calculate pearson's correlation by default using cor command
cor(LungCap, Age)

#Using cor to calculate  Spearman's correlation
cor(LungCap, Age, method="spearman")

#Calculating the covariance
cov(LungCap, Age)

#summary of all this distribution fields
summary(LungCap)
summary(Smoke)
summary(LungCapData)