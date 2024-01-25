#A boxplot is appropiate for summarizing the distribution of a numeric variable.

#Attach dataset
attach(LungCapData)

#Visualize the head of the dataset
head(LungCapData)

#Boxplot
boxplot(LungCap)

#Quantiles
quantile(LungCap, probs=c(0, 0.25, 0.5, 0.75, 1))

boxplot(LungCap,
        main='Boxplot',
        ylab='Lung capacity',
        ylim=c(0, 16),
        las=1)

boxplot(LungCap ~ Gender,
        main='Boxplot by Gender')

boxplot(LungCap[Gender=='female'], LungCap[Gender=='male'])
