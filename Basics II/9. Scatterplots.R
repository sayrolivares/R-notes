#Scatterplots are appropriate for examining the relationship between 2 numeric variables

#Some prerequisites
attach(LungCapData)
names(LungCapData)
class(Age)
class(Height)
summary(Height)

#Pearson's correlation is used to examine the strength of the linear relationship between the 2 numeric variables
#Exploring the relationship between height and age
cor(Age, Height)

plot(Age, Height, 
     main='Scatterplot',
     xlab='Age',
     ylab='Height',
     las=1,
     xlim=c(0, 25),
     cex=0.5, #Change the size of the plots
     pch=8, #Change the plotting character we are using
     col=2) 
#Add linear regression line
abline(lm(Height~Age),
       col=4)
#We can add a nonparametric smoother to the plot to describe the relationship we are observing
lines(smooth.spline(Age, Height),
      lty=2, #We can change the line type that we are plotting
      lwd=5) #We can change the width of the line
