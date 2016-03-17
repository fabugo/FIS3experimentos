#LAMPADA
#DEFINIR MEDIDAS
Vr<-c(1.05,		2.03,	3.01,	3.96,	4.96,	6.02,	6.97,	8.01,	8.93,	9.93,	10.93,	11.98)
I<- c(111.00,	149.00,	180.00,	205.00,	229.00,	251.00,	270.00,	293.00,	311.00,	328.00,	343.00,	357.00)

#DEFINIR VALORES TEORICOS
P<-Vr*I
R<-(Vr/I)*1000
T<-(P^0.25)

#GERAR GRAFICO 1 CORRENTE VS DDP
png("exp4/Grafico%d1.png")
plot(I~Vr,ylab="I(mA)",xlab="Vr(V)",col="red",type="p",cex=2)
fit3 <- lm(I~poly(Vr,3,raw=TRUE))
xx <- seq(0,12, length=30)
lines(xx, predict(fit3, data.frame(Vr=xx)), col="blue",lty = 2)
dev.off()

#GERAR GRAFICO 2 RESISTENCIA VS DDP
png("exp4/Grafico%d2.png")
plot(R~Vr,ylab="R(ohm)",xlab="Vr(V)",col="red",type="p",cex=2)
fit3 <- lm(R~poly(Vr,3,raw=TRUE))
xx <- seq(0,12, length=19)
lines(xx, predict(fit3, data.frame(Vr=xx)), col="blue",lty = 2)

dev.off()

#GERAR GRAFICO 1 RESISTENCIA VS TEMPERATURA
png("exp4/Grafico%d3.png")
plot(R~T,ylab="R(ohm)",xlab="T(K)",col="red",type="p",cex=2)
fit3 <- lm(R~poly(T,3,raw=TRUE))
xx <- seq(0,7, length=19)
lines(xx, predict(fit3, data.frame(T=xx)), col="blue",lty = 2)
abline(lm(R~T),lty = 2,col="blue")
dev.off()
