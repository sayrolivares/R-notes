#X follows a poisson distribution with a known rate of lambda = 7
#X~Poisson(lambda=7)

#Some prerequisites
attach(LungCapData)
names(LungCapData)
summary(LungCap)

#we can calculate probabilities for the poisson using the "ppois"
#or "dpois" command
?dpois
##dpois can be used to find values for
##the probability density function of X, f(x)
dpois(x=4, lambda=7)

#P(x=0) & P(x=1) &...& P(x=4)
dpois(x=0:4, lambda=7)

#p(x <= 4)
sum(dpois(x=0:4, lambda=7))

#ppois command returns probabilities associated
#with the probability distribution function f(x)
ppois(q=4, lambda=7, lower.tail=T)

#p(x>=12)
ppois(q=12, lambda=7, lower.tail=F)

#rpois command can be used to take a random sample
#from a poisson distribution

#qpois command can be used to find quantiles
#for the poisson distribution