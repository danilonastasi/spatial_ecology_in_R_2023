# install.packages("vegan")
library(vegan)

# dune: https://rdrr.io/rforge/vegan/man/dune.html
# Vegetation and Environment in Dutch Dune Meadows.
# dune is a data frame of observations of 30 species at 20 sites. 
# The species names are abbreviated to 4+4 letters

data(dune)
head(dune)

# Ddecorana: Performs detrended correspondence analysis and basic 
# reciprocal averaging or orthogonal correspondence analysis.

ord <- decorana(dune)

ldc1 =  3.7004 
ldc2 =  3.1166 
ldc3 = 1.30055
ldc4 = 1.47888

total = ldc1 + ldc2 + ldc3 + ldc4

pldc1 = ldc1 * 100 / total
pldc2 = ldc2 * 100 / total
pldc3 = ldc3 * 100 / total
pldc4 = ldc4 * 100 / total

pldc1
pldc2

pldc1 + pldc2

plot(ord) 
