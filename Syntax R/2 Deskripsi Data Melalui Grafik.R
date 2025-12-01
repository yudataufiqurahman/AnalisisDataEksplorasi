#------------PRAKTIKUM ANALISIS DATA EKSPLORASI--------------#
# ---------- P E R T E M U A N   2 --------------- #
# Materi 2: DESKRIPSI DATA MELALUI GRAFIK

data <- read.csv(file.choose(), header=TRUE, sep=",", dec=".")
data
attach(data)

#Membuat Diagram Garis
plot(X25.34, type = "o", main = "Data Bunuh diri usia 25 sampai 34", xlab = "Bunuh diri" ,ylab = "frekuensi", col="red")
plot(X35.44, type = "o", main = "Data Bunuh diri usia 35 sampai 44", xlab = "Bunuh diri", ylab = "frekuensi", col="magenta")

#Membuat histogram
hist(X25.34, col="light pink", main = "Data Bunuh diri usia 25 sampai 34", xlab = "Bunuh diri", ylab = "frekuensi", border = "blue")
hist(X35.44, col="light blue", main = "Data Bunuh diri usia 35 sampai 44", xlab = "Bunuh diri", ylab = "frekuensi")
hist(X45.54)
hist(X55.64)
hist(X65.74)

#membuat boxplot
boxplot(X25.34, col="yellow", main = "Data Bunuh diri usia 25 sampai 34")
boxplot(X25.34, X35.44,X45.54, col="maroon", xlab = "Usia", ylab = "Jumlah",
        main = "Data Bunuh diri usia 25 sampai 34 dan 35 sampai 44", names = c("25-34","35-44","45-54"))

#membuat batang daun
stem(X25.34)
stem(X35.44)
stem(X45.54)
stem(X55.64)
stem(X65.74)

#Scatter Plot
plot(X25.34,X35.44)
abline(0,1)

plot(X35.44,X45.54)
abline(0,1)

plot(X45.54,X55.64)
abline(0,1)

plot(X55.64,X65.74)
abline(0,1)


