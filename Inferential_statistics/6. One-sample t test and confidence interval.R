#Conducting one-sample t-test and
#constructing one-sample confidence interval for the mean

##The one-sample t-test and confidence interval
##are parametric methods appropriate for examining
##a single numeric variable...


#Some prerequisites
attach(LungCapData)
names(LungCapData)
summary(LungCap)

#t-test
?t.test

boxplot(LungCap)

#ho: mu < 8
#one-sided 95% confidence interval for mu
t.test(LungCap, mu=8, alt='less', conf=0.95)

#two-sided
test = t.test(LungCap, mu=8, conf=0.99)
test

##Attributes command will allow us to see what
##attributes are stored within this object 'test'
attributes(test)

test$conf.int
test$p.value
