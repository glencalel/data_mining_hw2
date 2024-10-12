# Paquete que contiene la función para utilizar el algoritmo apriori
install.packages("arules")
library(arules)

# Cargar todos los datos contenidos en el csv a la variable data.
data <- read.csv('C:\\Users\\GlenAbrahamCalel-Sof\\Documents\\Maestria\\4to Trimestre\\Introducción a la Minería de Datos\\Tareas\\Tarea 2\\db_csv_\\PERSONA_BDP.csv', sep=",")

# Reemplazar todos los valores NA en cada columna con 0.
data[] <- lapply(data, function(x) {
  ifelse(is.na(x), 0, x)
})

# Convertir todas las columnas en factores.
data[] <- lapply(data, as.factor)

# Implementar el algoritmo apriori 
rules <-  apriori(data, parameter = list(support=0.2, confidence=0.5))


# Inspeccionar las primeras 100 reglas
inspect(rules[900:1000])


