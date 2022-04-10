# a. Diket x = 2 dan v = 10, fungsi probabilitas chi square
x = 2
v = 10

p <- dchisq(x, v)
p

# b. Histogram chi square dengan 100 data random
v = 10
x = 100

hist(rchisq(x, v), 
     main = "Histogram Chi Square",
     xlim = c(0,20),
     col = "green",
     xlab = "X",
     ylab = "V",
)

# C. nilai rataan dan varians
v = 10

mean = v
mean

varians = 2*v
varians
