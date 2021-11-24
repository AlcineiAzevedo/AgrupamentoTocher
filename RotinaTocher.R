remove(list=ls())
setwd("D:/Videos/_Analise multivariada/4.0 Agrupamento Tocher")
D=read.table("Dados.txt")
install.packages("MultivariateAnalysis")
library(MultivariateAnalysis)

TO=Tocher(D,Metodo = "original")
TO

TS=Tocher(D,Metodo = "sequential")
TS

TO$DistanciaCofenetica

TO$DistanciaIntraInterCluster


cor(TO$DistanciaCofenetica,as.dist(D))

TO$CorrelacaoCofenetica
