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
boxplot(airquality$Wind,horiz = TRUE,
        main = "Boxplot Variabel Wind",
        xlab = "Wind")
# Membuat steam and leaf variabel wind
stem(airquality$Wind)

# 4. Scatter Plot 
# Membuat Scatter Plot Wind dan Temperature
plot(airquality$Wind, airquality$Temp,
     main = "Scatterplot Wind dan Temperature",
     xlab = "Wind",
     ylab = "Temperature",
     pch = 16)
# Rug plot pada sumbu x dan y
rug(airquality$Wind)
rug(airquality$Temp, side = 2)
# Garis y = x sebagai acuan
abline(lm(Temp ~ Wind, data = airquality),col = "red",lwd = 2,lty = 2)