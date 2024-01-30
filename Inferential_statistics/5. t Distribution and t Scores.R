#These can be used to find p-values or critical values
#for constructing confidence intervals for statistics
#that follow a t-distribution

##t follows a t-distriution, with mean=0
##standard deviation=1 and 25 degrees of freedom


#Some prerequisites
attach(LungCapData)
names(LungCapData)
summary(LungCap)

#pt
?pt

#t-stat=2.3, df=25
#one-sided p-value
#P(t > 2.3)

pt(q=2.3, df=25, lower.tail=F)

#two-sided p-value
pt(q=2.3, df=25, lower.tail=F) +  pt(q=-2.3, df=25, lower.tail=T)
pt(q=2.3, df=25, lower.tail=F)*2

#find t for 95% confidence
#value of t with 2.5% on each tail
qt(p=0.025, df=25, lower.tail=T)