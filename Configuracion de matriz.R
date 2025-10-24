
# Configuracion de matriz

#---------------------------------------------
# 1.- Instalacion de paquetes y abrir libreria
# desde el CRAN (nube de R)
#---------------------------------------------

#Instalar paquetes
install.packages("palmerpenguins")

# Abrir libreria
library(palmerpenguins)

# creacion del objeto
BD2<-penguins


#-------------------------------
# 2.- Exploracion de matriz
#--------------------------------

# dimension de la matriz
dim(BD2)

# nombre de las columnas
colnames(BD2)

# Tipos de variables
str(BD2)

# deteccion de valores perdidos
anyNA(BD2)

#-------------------------
# Instalacion de matriz desde archivo
#------------------------

# 1.- Exportación de la matriz
#  Import data/ from excel / elegir browser / open / Import


# 2.- Estadisticas descriptivas
summary(BD3)


# 3.- Visualizacion de variables individuales

BD3$especie
BD3$isla
BD3$genero
BD3$año

# 4.- Conversión a factores de las variables cualitativas

BD3$especie<-factor(BD3$especie,
                         levels= c("Adelie", "Gentoo", "Chinstrap"))

BD3$isla<-factor(BD3$isla,
                      levels= c("Torgersen", "Biscoe", "Dream"))

BD3$genero<-factor(BD3$genero,
                        levels= c("male", "female"))

BD3$año<-factor(BD3$año,
                     levels= c("2007", "2008", "2009"))

# 5.- realiza un summary para verificar la configuración de las variables cualitativas
summary(penguins)

# 4.- Se guarda la matriz de datos con extención .csv
write.csv(BD3, "penguins1.csv")

# 5.- Visualización de la matriz penguins1.csv
#  Import data/ from text / elegir browser / open / Import