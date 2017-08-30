rm(list=ls())
setwd("<working directory>")


data <- read.csv("<output>.csv", header = FALSE)

#sample 1 from the table. This is just an example
sample1 <- data$V3

#sample 2 from the table. This is just an example
sample2 <- data$V4

#this is the package for the permutation test
library(coin)
#Cochran-Armitage test
independence_test(as.numeric(sample1) ~ as.numeric(sample2), teststat = "quad")

#If the results are signficant, then we can compute cliff's delta to determine the effect size
cliff.delta(sample1, sample2, use.normal=FALSE, conf.level=.95)