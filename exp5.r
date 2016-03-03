#DEFINIR MEDIDAS
Vr<-c()
I<-c()

#DEFINIR VALORES TEORICOS
P<-Vr*I
R<-(Vr/I)*1000
T<-(P^0.25)

#GERAR GRAFICO 1 CORRENTE VS DDP
png("exp5/Grafico%1d.png")
plot(I~Vr,ylab="I(mA)",xlab="Vr(V)",col="red",type="p")

dev.off()

#GERAR GRAFICO 2 RESISTENCIA VS DDP
png("exp5/Grafico%2d.png")
plot(R~Vr,ylab="R(ohm)",xlab="Vr(V)",col="red",type="p")

dev.off()

#GERAR GRAFICO 1 RESISTENCIA VS TEMPERATURA
png("exp5/Grafico%3d.png")
plot(R~T,ylab="R(ohm)",xlab="T(K)",col="red",type="p")

dev.off()
