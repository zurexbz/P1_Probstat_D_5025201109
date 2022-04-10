# a. Fungsi probabilitas dan Distribusi Exponensial lambda = 3
lambda = 3

set.seed(1)
rnorm(1)

p <- rexp(1,lambda)
p

# b. Histogram eksponensial 10, 100, 1000, dan 10000 random
lambda = 3

set.seed(1)
hist(rexp(10,lambda), 
     main = "Histogram 10 Random")
hist(rexp(100,lambda), 
     main = "Histogram 100 Random")
hist(rexp(1000,lambda), 
     main = "Histogram 1000 Random")
hist(rexp(10000,lambda), 
     main = "Histogram 10000 Random")

# c. Nilai rataan dan varians untuk n = 100 dan lambda = 3
lambda = 3
n = 100
set.seed(1)

rataan = mean(rexp(n,lambda))
rataan

varians = (sd(rexp(n,lambda)))^2
varians