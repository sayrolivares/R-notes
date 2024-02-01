#Explore
#Clean
#Manipulate
#Describe and summarise
#Visualise
#Analyse

##########################
## Manipulate your data ##
##########################

#INDEX:
# Rename a variable
# Reorder variables
# Change a variable type
# Select variables to work with
# Filter and arrange data
# Recode data
# Change data (mutate)
# Conditions changes (if_else)
# Reshape dataframe
        # wide to long
        # long to wide

# load packages
library(tidyverse)

#dataset to use
?msleep
glimpse(msleep)
view(msleep)

# Rename a ariable
msleep

msleep %>%
  rename('consev' = 'conservation')

# Reordering variables
msleep %>% 
  select(vore, name, everything())

# Change a variale type
class(msleep$vore)

msleep$vore <- as.factor(msleep$vore)
glimpse(msleep)

msleep %>%
  mutate(vore = as.character(vore)) %>% 
  glimpse()

# Select variables to work with

