#Normal distribution, z scores and normal probabilities
#X is normally distributed with a known mean of 75
#and standard deviation of 5
#X ~ N (micron=75, omega^2=5^2)

#Some prerequisites
attach(LungCapData)
names(LungCapData)
summary(LungCap)

#pnorm command to calculate probabilities for a normal distribution
?pnorm

#P(X <= 70)
pnorm(q=70, mean=75, sd=5, lower.tail=T)

#P(X >= 85)
pnorm(q=85, mean=75, sd=5, lower.tail=F)

#P(Z>=1)
pnorm(q=1, mean=0, sd=1, lower.tail=F)

#The qnorm function can be used to calculate quantiles or percentiles
#for a normal random variable
##Find Q1
qnorm(p=0.25, mean=75, sd= 5, lower.tail=T)

x = seq(from=55, to=95, by=0.2)
x

dens <- dnorm(x, mean=75, sd=5)
plot(x, dens, type="l",
     main="X-Normal: Mean=75, sd=5",
     xlab="x",
     ylab="Probability density",
     las=1)
abline(v=75)

#Draw a random sample from a randomly distributed population
rand = rnorm(n=40, mean=75, sd=5)
rand
hist(rand)