#Nama: Fitri Nur Azizah
#Kelas: 3A
#NIM: 3338250002

#1, Masukkan data airquality
library(dplyr)
data(airquality)
airquality

# 2. Histogram Variabel Wind dan Density
# Menghitung estimasi kepadatan
dens <- density(airquality$Wind, na.rm = TRUE)
# Membuat Histogram
hist(airquality$Wind,
     probability = TRUE,
     breaks = 10,
     xlab = "Wind",
     main = "Histogram dan Density Curve")
# Menambahkan garis kepadatan
lines(dens, col = "blue", lwd = 2)

# 3. Boxplot dan Stem and Leaf
# Membuat Boxplot variabel wind
boxplot(airquality$Wind,
        horizontal = TRUE,
        main = "Boxplot Variabel Wind",
        xlab = "Wind")
# Membuat steam and leaf variabel wind
stem(airquality$Wind)

# 4. Scatter Plot
# Membuat Scatter plot Temperature dan Wind
plot(airquality$Temp, airquality$Wind,
     pch = 16,
     main = "Scatterplot Temp dan Wind",
     xlab = "Temperature",
     ylab = "Wind")