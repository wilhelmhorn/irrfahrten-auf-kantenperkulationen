# funktion, die uns eine matrix A erstellt, die einer unendlichen kantenperkulation aehneln soll
# waehle grosses n und angemessenen kantenparameter pc

matrixerstellen <- function(n, pc){
  
  k <- 4*n+1
  
  A <- matrix(numeric(2))
  A <- matrix(, nrow = k, ncol = k) #erstelle NA-Matrix
  
  for (i in 1:k){     # zeilen
    for (j in 1:k){   # spalten
      if ((-1)^i == -1 && (-1)^j == -1){
        A[i,j] <- "#"
      }
      if ((-1)^i == -1 && (-1)^j == 1){
        x<-runif(1,min=0,max=1)
        if (x<pc){
          A[i,j] <- "_"
        }
        else {A[i,j] <- NA }
      }
      if ((-1)^i == 1 && (-1)^j == -1){
        y<-runif(1,min=0,max=1)
        if (y<pc){
          A[i,j] <- "|"
        }
        else {A[i,j] <- NA }
      }
    }
  }
  return(A)
}