#Stratified boxplots are useful for examining the relationship between a categorical variable and a numeric vaiable, within strata or groups defined by a third categorical variable

#Attach
attach(LungCapData)

#Create an "AgeGroups" variable
AgeGroups <- cut(Age, breaks=c(0,13,15,17,25), labels=c("<13", "14/15", "16/17", "18+"))
AgeGroups[1:5]

#Examine the relationship between smoking and lung capacity within age groups
boxplot(LungCap ~ Smoke, #The smoking effect is confounded with the Age effect
        ylab='Lung capacity', #On average, smokers are older than non-smokers
        main='Boxplot of lung capacity', #Older children have bigger bodies and hance bigger lung capacities
        las=1)

#Doing the same but for 18 older people
boxplot(LungCap[Age>=18] ~ Smoke[Age>=18],
        ylab='Lung capacity',
        main='Boxplot of lung capacity',
        las=1)

##Visualize the relationship between lungcapacit and smoking within each of the age strata
##Create boxplots of lung capacit for smokers and non smokers for:
##each level of the AgeGroups
boxplot(LungCap ~ Smoke*AgeGroups,
        ylab='Lung capacity',
        main='Boxplot of lung capacity by AgeGroup',
        las=1,
        col=c(4,2))

#Make a nice plot with changed x-axis, names, legend...
boxplot(LungCap ~ Smoke*AgeGroups,
        main='Lung capacity vs smoke stratified by age',
        ylab='Lung capacity',
        las=2,
        col=c("blue", "red"),
        axes=F,
        xlab='Age group')
box()
axis(2, at=seq(0, 20, 2), las=1)
axis(1, at=c(1.5, 3.5, 5.5, 7.5), labels=c("<13", "14-15", "16-17", "18+"))
legend(x=5.5, y=4.5, legend=c('Non-Smoker', "Smoker"), col=c(4,2), pch=15, cex=0.8)
