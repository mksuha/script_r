#library(tidyverse)
library(ggplot2)
#library(dplyr)

#regrex1 <- read_csv(file="regrex1.csv")

args <- commandArgs(trailingOnly = TRUE)
regrex1 <- read.csv(args[1])

png("Rscript_regrex1.png")

ggplot(data = regrex1, aes(x=x, y=y)) +
  geom_point() 
dev.off()

png("Rscript2_regrex1.png")
ggplot(data = regrex1, aes(x=x, y=y)) +
  geom_point() +
  geom_smooth(color = "purple", level = 0, method = "lm")

dev.off()


