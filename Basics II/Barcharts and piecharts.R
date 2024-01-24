#Barcharts and Piecharts are appropiate for summarizing the distribution of a categorical variable

#Attach dataset
attach(LungCapData)

#Visualize the head of the dataset
head(LungCapData)

#barplot help
?barplot

#A Barchart is a visual display of the frequency for each category of a categorical variable or the relative frequency (%) for each category
table(Gender)

#Store this frequency in a variable
count <- table(Gender)

#Storing in percent variable
percent <- table(Gender)/725

#plotting the count
barplot(count)

#plotting the frequencies
barplot(percent, 
        main='Title', 
        xlab='Frequency', 
        ylab='Gender', 
        las=1, 
        names.arg=c('Female', 'Male'),
        horiz=TRUE)

#Making piecharts
pie(count)

#help on piecharts
?pie
