library(tidyverse)
library(dplyr)
library(lubridate)
library(reticulate)
library(purrr)
library(reshape2)

dados <- read.csv("Dados.csv",sep=";")
str(dados)
head(dados)
tail(dados)

Data <- as.Date(dados$Data, format = "%d/%m/%Y")

dados$Mes <- month(dados$Data)

str(dados)

dados <- dados %>% mutate(Valor_mes = Valor/Parcelas)

head(dados)

dados <- dados %>% 
  mutate(Mes_Explode = map(Parcelas,base::seq_len)) %>% 
  unnest(Mes_Explode) %>%
  mutate(Mes_Explode = Mes_Explode + Mes - 1)

dados <- as.data.frame(dados)

str(dados)

head(dados)

dados <- dados %>% group_by(Cliente,Mes_Explode) %>%
  summarise(Valor_mes_total = sum(Valor_mes))

###View(dados)

dados$Mes_Explode <- as.factor(dados$Mes_Explode)

str(dados)

dados <- spread(dados, Mes_Explode, Valor_mes_total,fill="0")

dados <- as.data.frame(dados)

dados

