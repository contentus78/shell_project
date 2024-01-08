# header ----
rm(list=ls())

library(tidyverse)
library(shiny)
library(RColorBrewer)
library(scales)

# import data ----
shellprod_ww1 <- "data/ww1_total_shells_by_country.csv"
shellprod_ww1 <- read_csv(shellprod_ww1)

shellprod_ww1 |> 
  ggplot(aes(x = reorder(country, shellprod1914_1918), y = shellprod1914_1918, fill = country)) +
  geom_bar(stat = "identity") +
  scale_fill_brewer(palette = "Set3") +  # This sets a colorful palette
  scale_y_continuous(labels = comma) +
  theme_minimal() +
  theme(legend.position = "none", axis.title.x = element_blank()) +
  ylab("Shell Production 1914-1918")

