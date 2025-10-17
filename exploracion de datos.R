#___________ Práctica 1_______________
# Exploración de datos


# Se implementa la matriz iris que se encuentra cargada en R

#--------------------------------------------------------
#        Exploración de la Matriz  Iris
#--------------------------------------------------------

# 1.- Importación de la matriz precardados en R
data(iris)

# cargar matriz de datos iris en
# el objeto BD que significa
# Base de Datos
BD<-iris

# 2.- Dimensión de la matriz
dim(iris)
dim(BD)

# 3.- Nombre de las columnas
colnames(iris)
colnames(BD)

# 4.- Tipo de variables
str(iris)
str(BD)

# 5.- En busca de datos perdidos
anyNA(iris)
anyNA(BD)

#-------------------

# Instalacion de paquetes
install.packages("datasets")

#abrir libreria
library(datasets)

# abrir libreria con la funcion de ayuda (help)
library(help = "datasets")

#-----------------------

#Importacion de la matriz
data("CO2")

# cargar matriz de datos iris en
# el objeto BD que significa
# Base de Datos
BD1<-CO2

# 2.- Dimensión de la matriz
dim(CO2)
dim(BD1)

# 3.- Nombre de las columnas
colnames(iris)
colnames(BD)

# 4.- Tipo de variables
str(iris)
str(BD)

# 5.- En busca de datos perdidos
anyNA(iris)
anyNA(BD)
