data <- read.csv(file.choose(),header=T,sep=",")
data
attach(data)

med1 = 4.931091566 #LOG10 MEDIAN
med2 = 4.925312091
med3 = 4.859144304
d1 = 4.829676784 #LOG10 IQR
d2 = 4.819412311
d3 = 4.892484179

pair = data.frame(logmed=c(med1,med2,med3),logdi=c(d1,d2,d3))
pair
attach(pair)
plot(logdi,logmed)

res = lm(logmed ~ logdi)
abline(res)
res

xa = max(logmed)
xa
xb = min(logmed)
xb
ya = 9.6022 + (-0.9694 *xa)
ya
yb = 9.6022 + (-0.9694 *xb)
yb
nisbah = (ya-yb)/(xa-xb)
nisbah
data2021 <- log10(data$X2021)
data2021

data2022<- log10(data$X2022)
data2022

data2023<-log10(data$X2023)
data2023

boxplot(data2021,data2022,data2023,col=c("red","green","purple"),xlab="TAHUN",ylab="JUMLAH PNS (LOG X)",main="BOXPLOT JUMLAH PNS DI PROVINSI DI INDONESIA (LOG X)",xaxt="n")
axis(1,at=c(1,2,3),labels=c("2021","2022","2023"))

matplot(x = c(1:length(Propinsi)), y = cbind(data2021,data2022,data2023),
        type = "l",  # Menentukan jenis plot sebagai grafik garis
        lty = 1,  # Jenis garis (opsional, default adalah 1),
        col = c("red", "green", "blue"),
        xlab = "Provinsi", ylab = "Jumlah PNS Indonesia (LOG X)", main = "Line Graph Jumlah PNS di Indonesia (LOG X)",xaxt="n")
axis(1,at=1:length(data$X2021),labels=Propinsiangka,cex.axis=0.7,las=1.5)

x = c(1:38)
y1 = data2021
y1

qqplot(x,y1,main="QQPLOT JUMLAH PNS DI PROVINSI DI INDONESIA TAHUN 2021",xlab = "TAHUN",ylab ="JUMLAH PNS (LOG X)",xaxt="n")
axis(1,at=1:length(data$X2021),labels=Propinsiangka,cex.axis=0.7,las=1.5)

y2 = data2022
y2

qqplot(x,y2,main="QQPLOT JUMLAH PNS DI PROVINSI DI INDONESIA TAHUN 2022",xlab = "TAHUN",ylab="JUMLAH PNS (LOG X)",xaxt="n")
axis(1,at=1:length(data2022),labels=Propinsiangka,cex.axis=0.7,las=1.5)

y3 = data2023
y3

qqplot(x,y3,main="QQPLOT JUMLAH PNS DI PROVINSI DI INDONESIA TAHUN 2023",xlab="TAHUN",ylab="JUMLAH PNS (LOG X)",xaxt="n")
axis(1,at=1:length(data2023),labels=Propinsiangka,cex.axis=0.7,las=1.5)
