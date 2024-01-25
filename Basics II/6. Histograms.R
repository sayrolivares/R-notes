#A histogram is appropiate for summarizing the distibution of a numeric variable

#attach dataset
attach(LungCapData)

?hist

hist(LungCap)

hist(LungCap, freq=F)
hist(LungCap, prob=T)
hist(LungCap, prob=T, ylim=c(0,0.2))

#Add more bars to the hist in "breaks"
hist(LungCap, prob=T, ylim=c(0,0.2), breaks=20)

#Add more bars to the hist as frequency in breaks=seq
hist(LungCap, prob=T, ylim=c(0,0.2), breaks=seq(from=0, to=16, by=2))

#Add titles and xlabs
hist(LungCap, prob=T, ylim=c(0,0.2), breaks=seq(from=0, to=16, by=2), 
     main='Histogram of lung capacity',
     xlab='Lung capacity',
     las=1)

#Add a line to it
lines(density(LungCap))

#Add colors to it
lines(density(LungCap), col=2, lwd=3)
