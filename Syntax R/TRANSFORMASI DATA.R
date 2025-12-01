data<-read.csv(file.choose(),header=T,sep = ",")
data
attach(data)

datafr <- data.frame(data)
datafr

hist(Jumlah.Pelayanan.Kesehatan)
boxplot(Jumlah.Pelayanan.Kesehatan)
tran1 <- sqrt(Jumlah.Pelayanan.Kesehatan)
q1 <- quantile(tran1,probs=0.25)
q2 <- quantile(tran1,probs=0.5)
q3 <- quantile(tran1,probs=0.75)
r1 <- (q3-q2)/(q2-q1)
r1
hist(tran1)
boxplot(trans1)

trans2 <- log(AngkaHarapan..Hidup..AHH.)
q1 <- quantile(trans2,probs=0.25)
q2 <- quantile(trans2,probs=0.5)
q3 <- quantile(trans2,probs=0.75)
r2 <- (q3-q2)/(q2-q1)
r2
hist(trans2,main='TRANSFORMASI JUMLAH PELAYANAN KESEHATAN DI SETIAP PROVINSI DI INDONESIA',col='purple',xlab='LOG(JUMLAH PELAYANAN KESEHATAN)',ylab='Frekuensi')
boxplot(tran2,col="green",ylab='LOG(JUMLAH PELAYANAN KESEHATAN)',main='TRANSFORMASI JUMLAH PELAYANAN KESEHATAN DI SETIAP PROVINSI DI INDONESIA')

tran3 <- (-1/Jumlah.Pelayanan.Kesehatan)
q1 <- quantile(tran3,probs=0.25)
q2 <- quantile(tran3,probs=0.5)
q3 <- quantile(tran3,probs=0.75)
r3 <- (q3-q2)/(q2-q1)
r3
hist(tran3)
boxplot(tran3)


