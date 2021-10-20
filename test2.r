install.packages("Tmisc", repos = "http://cran.us.r-project.org")
library(Tmisc)
data(quartet)

head(quartet, n = 20)

quartet %>%
  group_by(set) %>%
  summarise(mean(x), sd(x), mean(y), sd(y), cor(x, y))