#Modifying plots to beautify them

#Some prerequisites
attach(LungCapData)
names(LungCapData)

?par

##First: Changing the size of the plotting characters using "CEX" argument
plot(Age, Height,
     main='Title',
     cex=0.5, #Change the plotting characters, in this case, 50% of their original size
     cex.main=2, #Change the size of the title
     cex.lab=1.5, #Change the size of the x and y labels
     cex.axis=0.7) #Change the size of the x and y axis values

##Second: Changing the font of the plotting characters using "Font" argument
plot(Age, Height,
     main='Scatterplot',
     font.main=3, #3 = italic. 4 = bold.
     font.lab=2, #2 = Bold font
     font.axis=3) #Italic font

##Third: Changing colours on plots using "col" argument
plot(Age, Height,
     main='Scatterplot',
     col=4, #Change the color of the plotting characters)
     col.main=5, #Change the color of the title
     col.lab=2, #Change the color of the x and y labels
     col.axis=3) #Change the color of the x and y axis

##Fourth: Plotting characters using "pch" argument
plot(Age, Height,
     main='Scatterplot',
     pch=".", #Change the form of the plotting characters, either by number or within strings
     )
abline(lm(Height~Age), #We can add the regression line to the plot using abline(lm)
       col=4, #We can change the color of the line
       lty=2, #change the line type
       lwd=6) #Change line width

##Fifth: Identifying gender on the same plot using plotting characters and colours
plot(Age[Gender=='male'], Height[Gender=='male'], #Shows Age and height only for those who are male. The square brackets tell us the subset of that dataset, in this case, gender male
     main='Height vs Age',
     col=5,
     pch='m',
     xlab='Age',
     ylab='Height')
#We can add females to this plot: We can add more points of observations to an existing plot using points command
points(Age[Gender=='female'], Height[Gender=='female'],
           col=6,
           pch='f')

##Sixth: Creating separate plots on one screen
par(mfrow=c(1,2)) #we can use mfrow or mfcol argument in par command. This written command here expresses c=(1,2) which means 1 row and 2 columns or 2 side by side plots

#We create the fist plot
plot(Age[Gender=='male'], Height[Gender=='male'], #Shows Age and height only for those who are male. The square brackets tell us the subset of that dataset, in this case, gender male
     main='Height vs Age for males',
     xlab='Age',
     ylab='Height',
     xlim=c(0,20),
     ylim=c(45,85))
#Then the second plot
plot(Age[Gender=='female'], Height[Gender=='female'], #Shows Age and height only for those who are male. The square brackets tell us the subset of that dataset, in this case, gender male
     main='Height vs Age for females',
     xlab='Age',
     ylab='Height',
     xlim=c(0,20),
     ylim=c(45,85))

##Seventh: Re-labeling the axis of a plot
par(mfrow=c(1,1))
plot(Age, Height,
     main='TITLE',
     axes=F) #Remove the axis and frame
#Use axis command to control it
axis(side=1, at=c(7,12.3,15), labels=c("Sev", "mean", "15"))
#The side 1 is the x axis. 
#We must specify at which point we would like things to appear with "at" argument
#The labels argument is where we tell R what we would like to appear there...
#Notice how the "at" and "labels" is equivalent to each other:...
#positions are important if we want them to be well distributed with strings.

axis(side=2, at=c(55,65,75), labels=c(55,65,75)) #Side 2 = y axis
box()
#We can also use side 3 to put it on top of the box and 4 to put it to the right
#We can always play around these characteristics anytime to functions that creates a plot