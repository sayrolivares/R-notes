#X is binomially distributed with n=20 trials
#and p=1/6 probability of success
#X ~ BIN(n=20, p=1/6)

#Some prerequisites
attach(LungCapData)
names(LungCapData)
summary(LungCap)

#We can calculate probabilities for the binomial
#using the "pbinom" or "dbinom" functions
?pbinom
?dbinom

#dbinom command is used to find values for
#the probability density function of X, f(x)
#Suppose we would like to find the probability that X is exactly
#equal to 3 (X=3)
dbinom(x=3, size=20, prob=1/6)
#We can see that the probability of exactly 3 successes on 20 trials
#is approximately 23.8%

#P(X=0) & P(X=1) &...& P(x=3)
dbinom(x=0:3, size=20, prob=1/6)

#P(x <= 3)
sum(dbinom(x=0:3, size=20, prob=1/6))
#pbinom gives us values for the probability distribution function of X, f(X)
pbinom(q=3, size=20, prob=1/6, lower.tail=T)

#rbinom command: to take a random sample from a binomial distribution
#qbinom command: to find quantiles for a binomial distribution