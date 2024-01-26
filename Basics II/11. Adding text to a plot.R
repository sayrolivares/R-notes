#Often one would like to enhance an existing plot by adding some descriptive text
#to the plot...

#Some prerequisites
attach(LungCapData)
names(LungCapData)

?text

#Create a simple scatterplot
plot(Age, LungCap,
     main='Lung cap vs age',
     las=1)
cor(Age, LungCap) #Get the correlation of these 2 columns

#Add text to it and graph it
text(x=5, y=11, #Graph the coordinates in the scatterplot
     label="r = 0.82", #Add text to the coordinate
     adj=0.5, #Adjust the position of the text
     col="red", #modify the color of the text (we are using the text command)
     cex=0.9, #Modify the size 
     font=4) 
abline(h=mean(LungCap), col="blue", lwd=2)
text(x=2.5, y=8.5, label='Mean Lung Cap', cex=0.65, col="blue", adj=0)

#add text to the margins of the plot instead of the body
mtext(text='r = 0.82', 
      side=1, #select the side where you'd like to put your text
      adj=0.64) #Select the position where you'd like the text to appear between 1 and 0

#Modify the plot
mtext(text='r = 0.82',
      side=3,
      adj=1,
      col=4,
      cex=1.25,
      font=4)

#We can modify plots as we wish using these commands