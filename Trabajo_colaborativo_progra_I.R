

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
