#Often two or more groups of observations are displayed on a single plot; here is
#how to identify each set

#Some prerequisites
attach(LungCapData)
names(LungCapData)

#Creating a plot and adding a legend of lung capacity vs age separated by smokers and non-smokers
#First create the plot
plot(Age[Smoke=='no'], LungCap[Smoke=='no'],
     main='Lung capacity vs age for smokers and non smokers',
     col='blue',
     xlab='Age',
     ylab='Lung capacity',
     pch=16)
#Add another point of observation
points(Age[Smoke=='yes'], LungCap[Smoke=='yes'], col=2, pch=17)
#Add a legend
legend(x=3.5, y=14, legend=c("non smokers", "smokers"), col=c(4,2), pch=c(16,17), bty='n')
#pch is the form of the plot and bty specifies is we want a box (y) or not (n)

##Displaying lines instead of plotting characters
#Plot the data
plot(Age[Smoke=='no'], LungCap[Smoke=='no'],
     main='Lung capacity vs age for smokers and non smokers',
     col='blue',
     xlab='Age',
     ylab='Lung capacity',
     pch=16)
#Add point of observation for smokers
points(Age[Smoke=='yes'], LungCap[Smoke=='yes'], col=2, pch=17)
#Adding lines smooth spline
lines(smooth.spline(Age[Smoke=='no'], LungCap[Smoke=='no']), col=4, lwd=3)
lines(smooth.spline(Age[Smoke=='yes'], LungCap[Smoke=='yes']), col=2, lwd=3)
#Add the legend for lines instead
legend(x=3.5, y=14, legend=c("non smokers", "smokers"), col=c(4,2), lty=1, bty='n', lwd=3)

##We can also change the line type on the graph
#plotting the data
plot(Age[Smoke=='no'], LungCap[Smoke=='no'],
     main='Lung capacity vs age for smokers and non smokers',
     col='blue',
     xlab='Age',
     ylab='Lung capacity',
     pch=16)
#Add point of observation for smokers
points(Age[Smoke=='yes'], LungCap[Smoke=='yes'], col=2, pch=17)

#add line and its type
lines(smooth.spline(Age[Smoke=='no'], LungCap[Smoke=='no']), col=4, lwd=3, lty=2)
lines(smooth.spline(Age[Smoke=='yes'], LungCap[Smoke=='yes']), col=2, lwd=3, lty=3)
#Add the legend
legend(x=3.5, y=14, legend=c("non smokers", "smokers"), col=c(4,2), lty=c(2,3), bty='n', lwd=3)
