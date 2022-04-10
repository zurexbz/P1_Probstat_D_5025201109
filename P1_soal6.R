# a. Diket n = 100, mean = 50, sd = 8
# Cari fungsi prob dari distribusi normal, hitung z score dan plot data random
# X1 =  di bawah rata-rata, X2 =  di atas rata-rata
n = 100
mean = 50
sd = 8

set.seed(1)
zscore = rnorm(n, mean, sd)
disnorm
summary(zscore)

x1 = runif(1, min(zscore), mean)
x2 = runif(1, mean, max(zscore))
p1 = pnorm(x1, mean, sd)
p2 = pnorm(x2, mean, sd)
x1
x2
p1
p2
plot(zscore)

# b. Generate histogram dengan breaks 50 dengan format penamaan
breaks = 50

hist(zscore, breaks,
     main = "5025201109_Mohammad Firman Fardiansyah_Probstat_D_DNhistogram",
     col = "green"
)