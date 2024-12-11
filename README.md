1) During this analysis, I was trying to describe the logistic growth of a microbial population using a differential equation. This differential equation allows me to model the rate of change of population size over time, compared to the initial population size. For this analysis, I used the progamme 'Posit Cloud' to retrieve data from the Internet, and to write and execute the code.

   I used the data from the file **'experiment.csv'**. This data generates a graph that allows me to estimate the initial population size (N0), the rate of population growth (r), and the carrying capacity of the environment (K). The differential equation that we used to measure logistic growth is as follows: $`N(t) = \frac{KN_0e^{rt}}{K-N_0 + N_0e^{rt}} `$. The code for this experiment can be found [**here**](https://github.com/Candidate1072313/logistic_growth/blob/main/plot_data_and_model.R).

   **My results for $`N_0`$, r and K are as follows:** $`N_0 = 879 `$, $`r = 0.0100086 `$, $`K = 6 \times 10^{10} `$

   The results of this experiment show a classic **logistic growth model**, with the population showing steady exponential growth until reaching the carrying capacity of the environment, and levelling off to a steady population size.

3) I will now use my estimates of $`N_0`$ and r to calculate the size of the population at t = 4980 minutes , comparing the results for an exponential and logistic growth equation

   **Assuming exponential population growth**: $`N(t) = N0e^{rt} `$, where $`N(t)`$ is the population size at time, t and $`N_0`$ is the original population size 

   $`N(t) = (879)e^{(0.0100086)(4890)}`$

   $`N(t) = (879)e^{(48.942054)}`$

   $`N(t) = 1.582  \times 10^{24}`$

   **Assuming logistic growth**: $`N(t) = K + 0t `$. This is therefore equivalent to the carrying capacity, K. 

   $`N(t) = 6 \times 10^{10} `$

   Under exponential growth, there is more rapid, constant increase in the population size, and there is no carrying capacity that limits the population.

4) Creating a graph that compares the logistic and exponential growth, using the parameters that I measured.

   The file containing the information for this code is listed in the repository under: [**exponential_logistic_comparison.R**](https://github.com/Candidate1072313/logistic_growth/blob/main/exponential_logistic_comparison.R)

   The black dots show the actual growth of the population. The **red** line shows the **exponential** growth model. The **green** line shows the **logistic** growth model. We can see, the population follows a logistic growth model along the green line.

  ![image](https://github.com/user-attachments/assets/76d2d10b-6593-419f-b2ac-e497e359912c)
