
#Persona 1 Anderson
library(readr)
dataset <- read_csv("C:/Users/ETLP/OneDrive/Documentos/III Ciclo UCR estadística/Programación I/dataset.csv")
summary(dataset) #resumen del data set
dim(dataset) #dimensión del data set
class(dataset$edad)
mean(dataset$edad)
class(dataset$promedio)
mean(dataset$promedio, na.rm = T)
class(dataset$creditos_aprobados)
mean(dataset$creditos_aprobados, na.rm = T)
#Esta es la parte de Sebastián


desvestandar = function(n){
  if (length(n) <= 1) {
    resp1 = return("Debe ser más de un número")
  } else {
    resp2 = return(sd(n))
  }
}
desvestandar(c(10,2,3))
#Parte de Justin

#Crear el archivo 03_iteracion_exportacion.R con el siguiente contenido:
#Utilizar un for o while para iterar sobre columnas y contar cuántas tienen más de 10 valores mayores a la media.
#Crear un nuevo data frame con los resultados de la iteración.
#Guardar ese nuevo data frame en un archivo .csv usando write.csv() en la carpeta /resultados/

datos = dataset



# Seleccionar solo columnas numéricas
numericas <- datos[sapply(datos, is.numeric)]

# Crear data frame de resultados
resultados <- data.frame(columna = character(), conteo = integer())

# Iterar y contar valores mayores a la media
for (col in names(numericas)) {
  vals <- numericas[[col]]
  media <- mean(vals, na.rm = TRUE)
  conteo <- sum(vals > media, na.rm = TRUE)
  
  if (conteo > 10) {
    resultados <- rbind(resultados, data.frame(columna = col, conteo = conteo))
  }
}

# Crear carpeta si no existe y guardar resultados
dir.create("resultados", showWarnings = FALSE)
write.csv(resultados, "resultados/columnas_mayores_media.csv", row.names = FALSE)
  