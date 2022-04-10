# a. Diket rata" 4.5, x = 6 bayi akan lahir
rata = 4.5
x = 6

peluang <- dpois(x, rata)
peluang

#b. Histogram 6 bayi selama setahun n = 365
rata = 4.5
n = 365
set.seed(0)
hist(rpois(n, rata),
     main = "Histogram Poisson Bayi",
     xlim = c(0,20),
     col = "green",
)

#c. Perbandingan a dan b
# Peluang kelahiran dalam 1 tahun (poin b) lebih rendah daripada kelahiran pada esok harinya
# akan tetapi probabilitas/peluang yang terjadi tidak bebeda signifikan

#d. Nilai rataan dan mean
rata = 4.5

rataan = varians = rata
rataan
varians