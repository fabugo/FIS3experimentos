#Capacitancia com ALUMINIO
d<-c(1,3,5.5,7.5,10.1,12,14.5)
C<-c(135.4,121.4,144.5,144.2,138.3,119.9,129.5)
plot(C~D)

#Capacitancia com AR
d<-c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,25,30,35,40,45,50)
C<-c(47.3,35.2,30.3,26.8,24.2,22.2,21.2,20.4,19.7,18.2,18.3,17.8,17.4,17.2,16.8,16.5,16.3,16.1,15.9,15.8,15.1,14.7,14.3,14.1,13.9,13.8)
Ad<-pi*(4.01**2)/d
Eo<-0.885
Ct = Eo*Ad
Cp = C - Ct
D <- 1/d
png("exp6/Grafico%d2.png")
plot(Ct~d,ylab="C(pF)",xlab="d(mm)",col="green",type="l",cex=2)
lines(C~d, col="blue")
lines(Cp~d, col="red")
legend("topright", legend=c("Teórico", "Medido", "Parasita"),lty=c(1,1,1),
col=c("green","blue","red"), lwd=1:1:1, bty="n", pch=c(1,1,1))
dev.off()
