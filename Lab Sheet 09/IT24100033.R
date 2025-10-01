setwd("C:\\Users\\Dilki\\Desktop\\IT24100033")
getwd()

# Exercise
baking <- rnorm(25, mean = 45, sd = 2)

t.test(baking, mu = 46, alternative = "less")
