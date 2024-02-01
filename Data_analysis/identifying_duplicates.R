#Explore
#Clean
#Manipulate
#Describe and summarise
#Visualise
#Analyse

#Cleaning data#

#Install package tidyverse
install.packages('tidyverse')
library(tidyverse)
data()
view(starwars) #data included in tidyverse package

#variable types
glimpse(starwars)
class(starwars$gender)
unique(starwars$gender) #Returns unique values in a col

#change variable from character into factor
starwars$gender <- as.factor(starwars$gender)
class(starwars$gender)

levels(starwars$gender)
starwars$gender <- factor((starwars$gender),
                          levels = c('masculine',
                                     'feminine'))
levels(starwars$gender)

#selecting variables
names(starwars)

starwars %>%
  select(name, height, ends_with('color')) %>%
  names()

#Filtering observations
unique(starwars$hair_color)

starwars %>% 
  select(name, height, ends_with('color')) %>%
  filter(hair_color %in% c('blond', 'brown') &
           height < 180)

#Missing data
#Understanding what to exclude really requires us
#to understand our variables and dataset

mean(starwars$height, na.rm = TRUE)

starwars %>% 
  select(name, gender, hair_color, height)

starwars %>% 
  select(name, gender, hair_color, height) %>%
  na.omit()

##Understanding where the missingness is
starwars %>%
  select(name, gender, hair_color, height) %>%
  filter(!complete.cases(.)) #the exlamation mark
#is only giving us the data where a missing value
#is in. This let us know WHERE the missingness is.

starwars %>% 
  select(name,gender, hair_color, height) %>%
  filter(!complete.cases(.)) %>%
  drop_na(height)

##replace NA with something else (depending on the
##nature of the variable)
starwars %>% 
  select(name,gender, hair_color, height) %>%
  filter(!complete.cases(.)) %>%
  mutate(hair_color = replace_na(hair_color, 'none'))

#Duplicates
names <- c('Peter', 'John', 'Andrew', 'Peter')
age <- c(22, 33, 44, 22)
friends <- data.frame(names,age)

friends[!duplicated(friends), ]
friends %>% distinct()

#Recoding variables
starwars %>% 
  select(name, gender) %>% 
  mutate(gender_coded = recode(gender,
                         'masculine' = 1,
                         'femenine' = 2))