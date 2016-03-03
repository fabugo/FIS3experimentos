#DEFINIR MEDIDAS
Vr<-c(1.05,2.05,3.05,4.04,5.00,6.03,6.06,6.18,6.20)
I<-c(1.80,3.90,6.20,9.10,13.80,21.00,25.10,33.50,43.00)

#DEFINIR VALORES TEORICOS
P<-Vr*I
R<-(Vr/I)*1000
T<-(P^0.25)

#GERAR GRAFICO 1 CORRENTE VS DDP
png("exp3/Grafico%1d.png")
plot(I~Vr,ylab="I(mA)",xlab="Vr(V)",col="red",type="p")
lines(I,Vr,lty = 2,col="blue")
dev.off()

#GERAR GRAFICO 2 RESISTENCIA VS DDP
png("exp3/Grafico%2d.png")
plot(R~Vr,ylab="R(ohm)",xlab="Vr(V)",col="red",type="p")
lines(R,Vr,lty = 2,col="blue")
dev.off()

#GERAR GRAFICO 1 RESISTENCIA VS TEMPERATURA
png("exp3/Grafico%3d.png")
plot(R~T,ylab="R(ohm)",xlab="T(K)",col="red",type="p")
lines(R,T,lty = 2,col="blue")
dev.off()
