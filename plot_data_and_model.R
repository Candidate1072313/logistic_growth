#Installing the relevant data
growth_data <- read.csv("experiment.csv")

#Modelling the logistic function
logistic_fun <- function(t) {
  N <- (N0*K*exp(r*t))/(K-N0+N0*exp(r*t))
  return(N)
}

#Entering my estimates
N0 <- 879  #The initial population size, N0
r <- 0.0100086 #The growth rate of the population, r
K <- 6e+10 #The carrying capacity of the population, K

#Plotting the logistic models
ggplot(aes(t,N), data = growth_data) +
  geom_function(fun=logistic_fun, colour="red") +
  geom_point() +
  scale_y_continuous(trans='log10') +
  theme_minimal()

  