#DIODO
#DEFINIR MEDIDAS
Vr<-c(0.11,	0.21,	0.30,	0.41,	0.51,	0.56,	0.61,	0.65,	0.67,	0.69,	0.709,	0.722,	0.737,	0.751,	0.815,	0.846,	0.883,	0.902,	0.923,	1.047,	1.115)
I<-c (0.00,	0.00,	0.00,	0.00,	0.20,	1.00,	2.40,	4.90,	7.90,	11.00,	17.2,	23.5,	30.5,	37.2,	125.00,	172.00,	238.00,	338.00,	372.00,	700.00,	1520.00)

#DEFINIR VALORES TEORICOS
P<-Vr*I
R<-(Vr/I)*1000
T<-(P^0.25)

#GERAR GRAFICO 1 CORRENTE VS DDP
png("exp5/Grafico%d1.png")
plot(I~Vr,ylab="I(mA)",xlab="Vr(V)",col="red",type="p",cex=2)
fit3 <- lm(I~poly(Vr,5,raw=TRUE))
xx <- seq(0.51,1.5, length=20)
lines(xx, predict(fit3, data.frame(Vr=xx)), col="blue",lty = 2)
dev.off()

#GERAR GRAFICO 2 RESISTENCIA VS DDP
png("exp5/Grafico%d2.png")
plot(R~Vr,ylab="R(ohm)",xlab="Vr(V)",col="red",type="p",cex=2)
lines(R~Vr,lty = 2,col="blue")
dev.off()

#GERAR GRAFICO 1 RESISTENCIA VS TEMPERATURA
png("exp5/Grafico%d3.png")
plot(R~T,ylab="R(ohm)",xlab="T(K)",col="red",type="p",cex=2)
lines(R~T,lty = 2,col="blue")
dev.off()
