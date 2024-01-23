#Working directories are useful for keeping the work organized
#It is one spot (e.g a folder) that you have created for saving relevant projects or files

#Attach the data
attach(online_retail)

#Check the variable names
names(online_retail)

#Checking the current working directory
getwd()

#Setting the working directory method 1
setwd(/User/user/.../Project)

#Setting the working directory method 2
projectWD = "/User/user/.../Project"
setwd(projectWD)

#Setting the working directory method 3
#In RStudio, Go to Session -> Set working directory -> Choose directory...

#Save current workspace image
save.image("Firstprojet.Rdata")

#Remove workspace (everything)
rm(list=ls())

#Quit RStudio
q()

#Open workspace
ls()
#Set working directory
setwd("Directory")
getwd()

#Get the previous workspace image
load("Firstproject.Rdata") #Method 1
load(file.choose()) #Method 2