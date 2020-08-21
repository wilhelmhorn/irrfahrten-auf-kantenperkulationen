geschwindigkeitsvektor <- c(1:10)

for (s in 1:10){
  geschwindigkeitsvektor[s] <- irrfahrt(0.035, 0.6)
}
var <- var(geschwindigkeitsvektor)
erw <- mean(geschwindigkeitsvektor)

a <- c(0.05, 0.1, 0.11, 0.12, 0.125, 0.13, 0.14, 0.15, 0.2)
b <- c(0.0536, 0.10057, 0.1097, 0.1156, 0.1168, 0.1168, 0.1111, 0.1042, 0.0786)

a1 <- c(0.05)
b1 <- c(0.019)
plot(a, b, type = "p", col = "red", lwd = 5, ylab = "Geschwindigkeit [Knoten/Schritt]", xlab = "Driftparameter Beta", main = "Geschwindigkeit in Abhängigkeit von beta für p=0.7")

a1 <- c(0.03, 0.035, 0.04, 0.045, 0.05, 0.07, 0.10, 0.15)
b1 <- c(0.01472, 0.016497 ,0.01959, 0.01974, 0.01902, 0.01697, 0.01244, 0.003)
plot(a1, b1, type = "p", col = "red", lwd = 5, ylab = "Geschwindigkeit [Knoten/Schritt]", xlab = "Driftparameter Beta", main = "Geschwindigkeit in Abhängigkeit von beta für p=0.6")
