#Script to plot the logistic growth data

#Installing packages and opening data
install.packages("ggplot2") ##ggplot2 is graphing software
library(ggplot2)
growth_data <- read.csv("experiment.csv") #Opening data

#Generating a model of the growth of the population
ggplot(aes(t,N), data = growth_data) +
  geom_point() +
  labs(x = "Time, t (minutes)", y = "Population Growth (log10N)") +
  theme_minimal()

#Logarithmic transform of data
ggplot(aes(t,N), data = growth_data) +
  geom_point() +
  labs(x = "Time, t (minutes)", y = "Population Growth (log10N)") +
  scale_y_continuous(trans='log10') +
  theme_minimal()
