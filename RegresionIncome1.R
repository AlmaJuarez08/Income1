#Lectura de tabla income1
setwd("C:/Users/Alumno/Documents/Alma_AprendizajeEstadistico")
Datos<-read.csv("Income1.csv")
Datos
dim(Datos)
head(Datos)
datos<-Datos[,c(2,3)]
datos
head(datos)
plot(datos,xlab="Educación",ylab="Ingreso",main="Ingreso vs Educación",col="blue")
abline(RegresionDatos)

RegresionDatos=lm(datos$Income~datos$Education)
RegresionDatos

summary(RegresionDatos)

Intercepto=RegresionDatos$coefficients
Pendiente=RegresionDatos$coefficients
predict(RegresionDatos, x = c(15.37793))
