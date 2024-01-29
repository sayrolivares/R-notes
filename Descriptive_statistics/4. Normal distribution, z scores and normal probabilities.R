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
