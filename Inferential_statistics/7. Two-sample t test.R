#These are parametric methods appropriate for
#examining the difference in means for 2 populations
#These are ways of examining the relationship between
#a numeric outcome variable (Y) and a categorical explanatory
#variable (X, with 2 levels)

#Prerequisites
attach(LungCapData)
names(LungCapData)
summary(LungCap)

#t.test
?t.test

#visualizing the data first
boxplot(LungCap ~ Smoke)

#Ho: mean lung cap of smokers = of non smokers
#two-sided test
#assume non-equal variances

t.test(LungCap~Smoke,
       mu=0,
       alt="two.sided",
       conf=0.95,
       var.eq=F,
       paired=F)

#A different approach
t.test(LungCap[Smoke=='no'], LungCap[Smoke=='yes'])

#var.eq = T
t.test(LungCap~Smoke,
       mu=0,
       alt="two.sided",
       conf=0.95,
       var.eq=T,
       paired=F)
#Deciding if we want to assume equal or non-equal variances
#The simplest way is we can examine the boxplot previously created
#and looking at this we can see the non-smoking group
#seems to have a larger variation in lung capacities
#than the smoking group

##The second way is that we can compare the actual variance
##of lung capacities for those who smoke and compare this 
##with the variance in lung capacities for those who do not smoke

var(LungCap[Smoke=='yes'])
var(LungCap[Smoke=='no'])

###As a third option, we can use the lavene's test
###This test is used to test the null hypothesis
###that the population variances are equal
###we need to have the CAR package installed in R
install.packages('carData')
library(carData)
library(car)

leveneTest(LungCap~Smoke)
#this returns a small p-value=0.0003408 so we should
#reject the null hypothesis and conclude we have evidence
#to believe population variances are non-equal and use
#the non-equal assumption