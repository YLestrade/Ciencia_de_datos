
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


# 2.1- Estadisticas descriptivas (medidas de tendencia central)
summary(BD3)

# 2.2.1- Medidas de dispersion
# 2.2.1.1.-Varianza
var(BD3$largo_pico_mm)

#2.2.1.1.- Desviación estándar
sd(BD3$largo_pico_mm)

# Analisis de variable largo del pico
# Media:43.92
# Mediana:44.45
# Varianza: 29.88
# desviacion estandar: 5.46
# Conclusion: la variable "largo del pico" sigue un distribución normal.


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
summary(BD3)



# 6.- Se guarda la matriz de datos con extención .csv
write.csv(BD3, "penguins1.csv")

# 7.- Visualización de la matriz penguins1.csv
#  Import data/ from text / elegir browser / open / Import


# Instalar librerias
library(xlsx)
# 8.- Guardar la matriz en archivo xlsx
write.xlsx (BD3, file = "penguins_codif.xlsx")

