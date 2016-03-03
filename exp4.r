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
plot(I~Vr,ylab="I(mA)",xlab="Vr(V)",col="red",type="p")
dev.off()

#GERAR GRAFICO 2 RESISTENCIA VS DDP
png("exp4/Grafico%d2.png")
plot(R~Vr,ylab="R(ohm)",xlab="Vr(V)",col="red",type="p")

dev.off()

#GERAR GRAFICO 1 RESISTENCIA VS TEMPERATURA
png("exp4/Grafico%d3.png")
plot(R~T,ylab="R(ohm)",xlab="T(K)",col="red",type="p")
abline(lm(R~T),lty = 2,col="blue")
dev.off()
