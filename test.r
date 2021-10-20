install.packages("tidyverse", repos = "http://cran.us.r-project.org")
install.packages("palmerpenguins", repos = "http://cran.us.r-project.org")
install.packages("knitr", repos = "http://cran.us.r-project.org")
install.packages("rmarkdown", repos = "http://cran.us.r-project.org")
library(tidyverse)
library(palmerpenguins)
data(penguins)
head(penguins, n = 3)

penguins %>%
  arrange(-body_mass_g) %>%
  select(-sex) %>%
  head(n = 3)

penguins %>%
  group_by(species, island) %>%
  drop_na() %>%
  summarize(MEAN_MASS = mean(body_mass_g), MAX_MASS = max(body_mass_g))