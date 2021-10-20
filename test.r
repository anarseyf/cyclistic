install.packages("tidyverse")
install.packages("palmerpenguins")
install.packages("knitr")
install.packages("rmarkdown")
library(tidyverse)
library(palmerpenguins)
data(penguins)
head(penguins, n = 3)

penguins %>%
  arrange(-body_mass_g) %>%
  head(n = 3)

penguins %>%
  group_by(species, island) %>%
  drop_na() %>%
  summarize(MEAN_MASS = mean(body_mass_g), MAX_MASS = max(body_mass_g))