#Stem and leaf plots are appropriate for summarizing the distribution of a numeric variable and are most appropriate for smaller datasets

attach(LungCapData)
names(LungCapData)

#Extract the lung capacity for only females and save in female lungcap
femaleLungCap = LungCap[Gender=='female']

?stem

stem(femaleLungCap)

#adjust the scale
stem(femaleLungCap, scale=2)
