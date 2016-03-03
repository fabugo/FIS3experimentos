#RESISTOR
#DEFINIR MEDIDAS
Vr<-c(0.97,	2.06,	3.05,	4.04,	5.05,	5.99,	7.01,	8.00,	8.93,	9.88)
I<- c(1.43,	3.10,	4.60,	6.05,	7.55,	8.99,	10.40,	11.09,	13.25,	14.70)

#DEFINIR VALORES TEORICOS
P<-Vr*I
R<-(Vr/I)*1000
T<-(P^0.25)

#GERAR GRAFICO 1 CORRENTE VS DDP
png("exp2/Grafico%d1.png")
plot(I~Vr,ylab="I(mA)",xlab="Vr(V)",col="red",type="p")
abline(lm(I~Vr),lty = 2,col="blue")
dev.off()

#GERAR GRAFICO 2 RESISTENCIA VS DDP
png("exp2/Grafico%d2.png")
plot(R~Vr,ylab="R(ohm)",xlab="Vr(V)",col="red",type="p")
abline(mean(R),0,lty = 2,col="blue")
dev.off()

#GERAR GRAFICO 1 RESISTENCIA VS TEMPERATURA
png("exp2/Grafico%d3.png")
plot(R~T,ylab="R(ohm)",xlab="T(K)",col="red",type="p")
abline(mean(R),0,lty = 2,col="blue")
dev.off()
