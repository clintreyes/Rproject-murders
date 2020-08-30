library(tidyverse)
load("rda/murders.rda")

murders %>% mutate(abb = reorder(abb, population)) %>%
  ggplot(aes(abb, population)) + 
  geom_bar(width = 0.5, stat = "identity", color = "black") +
  coord_flip()

ggsave("figs/barplot.png")