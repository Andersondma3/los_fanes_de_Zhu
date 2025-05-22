

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



#Parte de Justin

#Crear el archivo 03_iteracion_exportacion.R con el siguiente contenido:
#Utilizar un for o while para iterar sobre columnas y contar cuántas tienen más de 10 valores mayores a la media.
#Crear un nuevo data frame con los resultados de la iteración.
#Guardar ese nuevo data frame en un archivo .csv usando write.csv() en la carpeta /resultados/
  