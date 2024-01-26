#These plots are appropriate for examining the relationship between 2 categorical variables.

attach(LungCapData)
names(LungCapData)

#Examine the relationship between Gender and Smoking
##Producing contigency tables
table1 = table(Smoke, Gender)
table1
barplot(table1)
barplot(table1, beside=T, legend.text=c("Non-Smoker", "Smoker"), main="Gender and smoking", xlab="Gender", las=1, col=c(2,4))

#Mosaic plot
?mosaicplot
mosaicplot(table1, main = "Title",
           sub= "Subtext",
           color=c(2,4), #Colors
           xlab="X axis",
           ylab="y axis")
