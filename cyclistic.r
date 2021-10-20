
library("ggplot2")
agg <- read.csv("agg_daily_duration_count.csv")

agg %>%
  group_by(YEAR_MONTH, DAYOFWEEK, IS_MEMBER) %>%
  summarise(MEAN_DURATION = mean(AVG_DURATION), MEAN_COUNT = mean(COUNT)) %>%
  head(n = 100)

# ggplot(data = file, aes(x = temp_avg, y = COUNT, color = IS_MEMBER, size = AVG_DURATION)) +
#   geom_point()