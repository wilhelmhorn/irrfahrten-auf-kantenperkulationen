irrfahrt <- function(beta, pc){
  
n <- 1000                   # Perkulationsgroesse
A <- matrixerstellen(n, pc) # erstellt die kantenperkulation
max <- dim(A)[1]            # dimension der matrix 

pnorden <- 0.25
psueden <- 0.25
pwesten <- 0.25 - beta
posten  <- 0.25 + beta

start <- (c(2*n+1,2*n+1)) # waehle den mittelpunkt des gitters als startpunkt
momentan <- start         # momentaner knoten
i <- 1                    # zaehlt die schritte (zeit)

#whileschleife fuer die irrfart, mindestens i iterationen
while(momentan[1] != max && momentan[1] != 1 && momentan[2] != max && momentan[2] != 1){ # stoppe, wenn rand erreicht wird
  
  zufallszahl <- runif(1,min=0,max=1) # gleichverteilte variable 0 ... 1
  
  if (zufallszahl < pnorden && is.na(A[momentan[1]-1, momentan[2]]) == FALSE){                                                             #norden
    momentan[1] <- momentan[1] - 2
    i <- i + 1}
  if (zufallszahl >= pnorden && zufallszahl < (pnorden + psueden) && is.na(A[momentan[1]+1, momentan[2]]) == FALSE){                       #sueden
    momentan[1] <- momentan[1] + 2
    i <- i + 1}
  if (zufallszahl >= (pnorden + psueden) && zufallszahl < (pnorden + psueden + pwesten) && is.na(A[momentan[1], momentan[2]-1]) == FALSE){ #westen
    momentan[2] <- momentan[2] - 2
    i <- i + 1}
  if (zufallszahl >= (pnorden + psueden + pwesten) && is.na(A[momentan[1], momentan[2]+1]) == FALSE){                                      #osten
    momentan[2] <- momentan[2] + 2
    i <- i + 1}
}
geschwindigkeit <- n/i
return(geschwindigkeit)
}
# zeit fuer n = 1000 ca. 20sec (immer ca. 122Mb), while schleife wird aber immer extrem schnell ausgefuehrt ("matrixerstellen" verschlingt die ganze zeit)

#(momentan[2]-start[2])*0.5