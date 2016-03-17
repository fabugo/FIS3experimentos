#TERMISTOR
#DEFINIR MEDIDAS
Vr<-c(1.05,	2.05,	3.05,	4.04,	5.00,	6.03,	6.06,	6.18,	6.20)
I<- c(1.80,	3.90,	6.20,	9.10,	13.80,	21.00,	25.10,	33.50,	43.00)

#DEFINIR VALORES TEORICOS
P<-Vr*I
R<-(Vr/I)*1000
T<-(P^0.25)

#GERAR GRAFICO 1 CORRENTE VS DDP
png("exp3/Grafico%d1.png")
plot(I~Vr,ylab="I(mA)",xlab="Vr(V)",col="red",type="p",cex=2)
fit3 <- lm(I~poly(Vr,3,raw=TRUE))
xx <- seq(0,7, length=30)
lines(xx, predict(fit3, data.frame(Vr=xx)), col="blue",lty = 2)
dev.off()

#GERAR GRAFICO 2 RESISTENCIA VS DDP
png("exp3/Grafico%d2.png")
plot(R~Vr,ylab="R(ohm)",xlab="Vr(V)",col="red",type="p",cex=2)
fit3 <- lm(R~poly(Vr,3,raw=TRUE))
xx <- seq(0,7, length=19)
lines(xx, predict(fit3, data.frame(Vr=xx)), col="blue",lty = 2)
dev.off()

#GERAR GRAFICO 1 RESISTENCIA VS TEMPERATURA
png("exp3/Grafico%d3.png")
plot(R~T,ylab="R(ohm)",xlab="T(K)",col="red",type="p",cex=2)
fit3 <- lm(R~poly(T,3,raw=TRUE))
xx <- seq(0,7, length=19)
lines(xx, predict(fit3, data.frame(T=xx)), col="blue",lty = 2)
dev.off()
