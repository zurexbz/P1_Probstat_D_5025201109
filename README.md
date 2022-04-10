# P1_Probstat_D_5025201109
Praktikum 1 Probstat D


## Soal 1
### A. Peluang penyurvei bertemu orang yang tidak menghadiri acara vaksinasi. Ketika diketikahui x=3 dan p=0.2
Dapat diselesaikan dengan bantuan fungsi dgeom(). Dengan x adalah orang yang tidak ikut acara vaksinasi dan p  merupakan probabilitas keberhasilan pertama peserta vaksinasi
```
p = 0.2
x = 3

Peluang <- dgeom(x, p)
Peluang
```

### B. Mencari mean dari 10000 data random, prob = 0.20, dan X=3
Dapat menggunakan fungsi rgeom() untuk mendapatkan data random sebanyak n
```
n = 10000
p = 0.20
m <- mean(rgeom(n, p) == 3)
m
```

### C. Perbandingan a dan b
Poin a akan menghasilkan nilai peluang yang tetap karena distribusi geometriknya sama
Poin b menghasilkan nilai yang berbeda karena distribusi geometik bernilai acak

### D. Membuat histogram distribusi geometrik dengan X=3 gagal sebelum sukses pertama
Dapat menggunakan fungsi hist() untuk membuat histogramnya
```
set.seed(0)
hist(rgeom(n, prob = p),
     main="Histogram Geometrik",
     xlim = c(0,25),
     xlab="X",
     col="green",
)
```

### E. Mencari nilai rataan dan varians dari distribusi geometrik
Untuk mendapatkan nilai rataan/mean dapat menggunakan rumus jumlah data (n) dikali dengan probabilitas. Kemudian untuk mendapatkan nilai varians, dapat menggunakan nilai rataan kemudian dikali dengan komplemen probabilitas
```
p = 0.2
n = 3

rataan = n/p
rataan

varians = (n-p)/(p^2)
varians
```

## Soal 2
### A. Diket 20 pasien, prob 0.2, dan s = 4 pasien. Peluang sembuh 4 pasien tersebut adalah?
Dapat menggunakan fungsi dbinom()
```
n = 20
p = 0.2
s = 4
peluang <- dbinom(s, n, p)
peluang
```

### B. Gambarkan grafik histogram dari kasus tersebut
Dapat menggunakan bantuan fungsi plot()
```
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
```

### C. Mencari nilai rataan dan varians dari distirbusi binom
Menggunakan rumus yang sama dengan nomor sebelumnya
```
n = 20
p = 0.2
rataan = n*(p)
rataan

varians = n*(p)*(1-(p))
varians
```

## Soal 3
### A. Berapa peluang bahwa 6 bayi akan lahir dirumah sakit ini besok?
Diket rata-rata sebanyak 4.5 dan x = 6 yaitu bayi akan lahir. Untuk menghitung dapat menggunakan fungsi dpois()
```
rata = 4.5
x = 6

peluang <- dpois(x, rata)
peluang
```

### B. simulasikan dan buatlah histogramkelahiran 6 bayi akan lahir dirumah sakit ini selama setahun (n = 365)
Dapat menggunakan fungsi hist() seperti nomor sebelumnya, dengan n diubah menjadi 365 yaitu hari dalama setahun
```
rata = 4.5
n = 365
set.seed(0)
hist(rpois(n, rata),
     main = "Histogram Poisson Bayi",
     xlim = c(0,20),
     col = "green",
)
```

### C. Perbandingan a dan b
Peluang kelahiran dalam 1 tahun (poin b) lebih rendah daripada kelahiran pada esok harinya. Akan tetapi probabilitas/peluang yang terjadi tidak bebeda signifikan

### D. Mencari nilai rataan dan varians dari distribusi poisson
rata = 4.5

rataan = varians = rata
rataan
varians
