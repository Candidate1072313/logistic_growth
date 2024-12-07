1) During this analysis, we were trying to describe the logistic growth of a microbial population using a differential equation. This differential equation allows for us to model the rate of change of population size over time, compared to the initial size of the population. For this analysis, I used the progamme 'Posit Cloud' to retrieve data from the Internet, and to write and execute the code.

   I used the data from the file **'experiment.csv'**. This data generates a graph for which we can estimate the initial population size (N0), the rate of population growth (r), and the carrying capacity of the environment (K). **My estimates for $`N_0`$, r and K are as follows:**

   $`N_0 = 879 `$

   $`r = 0.0100086 `$

   $`K = 6 \times 10^{10} `$

   The results of this experiment show a classic **logistic growth model**, with the population showing steady exponential growth until reaching the carrying capacity of the environment, and levelling off to a steady population size.

2) I will now use my estimates of $`N_0`$ and r to calculate the size of the population at t = 4980 minutes , comparing the results for an exponential and logistic growth equation

   **Assuming exponential population growth**: $`N(t) = N0e^{rt} `$, where $`N(t)`$ is the population size at time, t and $`N_0`$ is the original population size 

   $`N(t) = (879)e^{(0.0100086)(4890)}`$

   $`N(t) = (879)e^{(48.942054)}`$

   $`N(t) = 1.582  \times 10^{24}`$

   **Assuming logistic growth**: $`N(t) = K + 0t `$. This is therefore equivalent to the carrying capacity, K. 

   $`N(t) = 6 \times 10^{10} `$

   Under exponential growth, there is more rapid and extreme increase of the population size, and there is no carrying capacity that limits the population.

4) Creating a graph that compares the logistic and exponential growth, using the parameters that I measured.

   The file containing the information for this code is listed in the repository under: **exponential_logistic_comparison.R**
      
   ![image](https://github.com/user-attachments/assets/106272d0-9276-4d57-8346-4e50e535030a)

   
