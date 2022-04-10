# a. Diket 20 pasien, prob 0.2, dan s = 4 pasien
# peluang sembuh 4 pasien tersebut
n = 20
p = 0.2
s = 4
peluang <- dbinom(s, n, p)
peluang

# b. Grafik histogram
n = 20
p = 0.2
x = 0:20
plot(x, dbinom(x, n, p),
     type = 'h',
     main = 'Histogram Distribusi Binomial',
     xlab = 'Sukses',
     ylab = 'Probabilitas',
     col = 'green',
     lwd = 3
)

# c. Nilai rataan dan varians
n = 20
p = 0.2
rataan = n*(p)
rataan

varians = n*(p)*(1-(p))
varians