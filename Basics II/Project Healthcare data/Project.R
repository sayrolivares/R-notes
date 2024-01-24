#Load necessary libraries. For this one, I will use ggplot2 and dplyr
library(ggplot2)
library(dplyr)

#Load the dataset 
read.table(file="C:/Users/tkylebjorn/Documents/HealthcareDiabetes.csv", header=TRUE, sep=",")

#Exploring the dataset
head(HealthcareDiabetes)
summary(HealthcareDiabetes)
str(HealthcareDiabetes)

#Data cleaning
##Check for missing values, result: No NA values
any(is.na(HealthcareDiabetes))

#Calculate basic health statistics (distribution)
health_stats <- summarise_at(HealthcareDiabetes, vars(Glucose, BloodPressure, BMI, Age), funs(mean, median, sd))
health_stats

#Visualize health indicators
?ggplot
##Example: Boxplot of Glucose levels by Outcome
ggplot(HealthcareDiabetes, aes(x = as.factor(Outcome), y = Glucose)) +
  geom_boxplot() +
  labs(title = "Glucose levels by presence of diabetes", x = 'Presence of Diabetes. 1 = Yes. 0 = No')

#Frequency women get pregnant
ggplot(HealthcareDiabetes, aes(x = Pregnancies)) +
  geom_histogram(binwidth = 1, fill = "skyblue", color = "black", alpha = 0.7) +
  labs(title = "Distribution of pregnancies",
       x = "Number of Pregnancies",
       y = "Frequency") +
  theme_minimal()

#How is this correlated to Pregnancies, glucose levels and presence of diabetes?
ggplot(HealthcareDiabetes, aes(x = Pregnancies, y = Glucose, color = as.factor(Outcome))) +
  geom_point(alpha = 0.7) +
  labs(title = "Correlation between Pregnancies, Glucose, and Outcome",
       x = "Number of Pregnancies",
       y = "Glucose Levels",
       color = "Outcome") +
  theme_minimal()

#Demographic analysis
#Age distribution by outcome
ggplot(HealthcareDiabetes, aes(x = Age, fill = as.factor(Outcome))) +
  geom_histogram(binwidth = 5, position = "identity", alpha = 0.7) +
  labs(title = "Age distribution by the presence of diabetes") +
  scale_fill_discrete(name = "Presence of diabetes")

#Correlation analysis
cor_matrix <- cor(select(HealthcareDiabetes, -Id))
cor_matrix

#Visualize the correlation
library(reshape2)

# Assuming cor_matrix is your correlation matrix
melted_cor_matrix <- melt(cor_matrix)

ggplot(data = melted_cor_matrix, aes(x = Var1, y = Var2, fill = value)) +
  geom_tile() +
  scale_fill_gradient2(low = "blue", mid = "white", high = "red", midpoint = 0) +
  theme_minimal() +
  labs(title = "Correlation Heatmap") +
  theme(axis.text.x = element_text(angle = 315, hjust = 0))

#Creating a report
install.packages("rmarkdown")
library(rmarkdown)