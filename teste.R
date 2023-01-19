library(tidyverse)
library(ggplot2)
library(deflateBR)
library(stringr)
library("skimr")
library("scales")
library(patchwork)
library(knitr)
library(kableExtra)
library(htmltools)


options(scipen=999)


setwd('C:/Users/SAMSUNG/OneDrive/Documentos/GitHub/cartao_corporativo')


corporativo <- read.csv2('corporativo.csv', encoding='LATIN1')

corporativo %>% head(10) 
  
