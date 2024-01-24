#tapply can be used to apply a function to subsets of a variable or vector

#Attach dataset
attach(LungCapData)

#Visualize the head of the dataset
head(LungCapData)

#Get help on the tapply function
?tapply

#Calculate the mean Age for Smoker/NonSmoker
tapply(X=Age, INDEX=Smoke, FUN=mean, na.rm=T)

#We can simplify this expresion to inlude only the criteria we want
#and we don't have NA values so we can skip that
tapply(Age, Smoke, mean)

#We can save the output in a new "object"
m <- tapply(Age, Smoke, mean)
m

#Simplify argument in tapply: It's true by default, and if we set it to false we see them as list
tapply(Age, Smoke, mean, simplify=FALSE)

#We can get the same values using []
mean(Age[Smoke=='no'])
mean(Age[Smoke=='yes'])

#Applying "summary" function to groups
tapply(Age, Smoke, summary)

#Applying the "quantile" function to the groups
tapply(Age, Smoke, quantile, probs=c(0.2, .80))

#We can subset based on multiple variable/vectors
#Calculate the mean Age for smoker/nonsmoker and male/female
tapply(X=Age, INDEX=list(Smoke, Gender), FUN=mean, na.rm=T)

#A less efficient way to get this done:
mean(Age[Smoke=='no' & Gender=='female'])
mean(Age[Smoke=='no' & Gender=='male'])
mean(Age[Smoke=='yes' & Gender=='female'])
mean(Age[Smoke=='yes' & Gender=='male'])