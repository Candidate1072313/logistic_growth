#Loading the relevant data
growth_data <- read.csv("experiment.csv")
View(growth_data) #Viewing the data in a new tab

#Generating the logistic model
##The first step is to set the logistic model
logistic_fun <- function(t) {
  N <- (N0*K*exp(r*t))/(K-N0+N0*exp(r*t))
  return(N)}

##Setting the variables
N0 <- 879 #The initial population size
r <- 0.0100086 #The growth rate of the population
K <- 6e+10 #The carrying capacity of the population

##Graphing the data
logisticPlot <- ggplot(aes(t,N), data = growth_data) +
  geom_function(fun=logistic_fun, colour="blue") +
  labs(x = "Time, t (mins)", y = "Population size (log10N)") +
  theme_minimal() +
  geom_point(size = 0.5) +
  scale_y_continuous(trans='log10')
logisticPlot


#Generating the exponential model

##The first step is to set the exponential model
exponential_fun <- function(t) {
  N <- (N0*exp(r*t))
  return(N)}

##Setting the variables
N0 <- 879 #The initial population size
r <- 0.0100086 #The growth rate of the population

##Graphing the data
exponentialPlot <- ggplot(aes(t,N), data = growth_data) +
  geom_function(fun=exponential_fun, colour="red") +
  labs(x = "Time, t (mins)", y = "Population size (log10N)") +
  theme_minimal() +
  geom_point(size = 0.5) +
  scale_y_continuous(trans='log10')
exponentialPlot 

#Combining the plots to compare exponential and logistic growth
combined_plot <- ggplot(data = growth_data, aes(t,N)) +
  geom_function(fun=exponential_fun, aes(colour="Exponential")) +
  geom_function(fun=logistic_fun, aes(colour= "Logistic")) +
  geom_point(size = 0.4) +
  theme_minimal() +
  labs(x = "Time, t (mins)", y = "Population size (log10N)") +
  scale_y_continuous(trans='log10') +
  scale_colour_manual(values = c("Exponential" = "red",
                                 "Logistic" = "lightgreen"))
combined_plot

#Uploading to GitHub repository
sink(file = "package-versions.txt")
sessionInfo()
sink()