# External data

library(terra)

# set the working directory based on your path:
# setwd("~/spatial_ecology/Downloads")  # Linux
# setwd("/Users/name/Desktop/spatial_ecology/Downloads")  # Mac 
setwd("C:/spatial_ecology/Downloads")  # Windows
naja <- rast("najafiraq_etm_2003140_lrg.jpg")  # like in im.import()

plotRGB(naja, r=1, g=2, b=3) # im-plotRGB

# Exercise: Download the second image from the same site and import it in R
najaaug <- rast("najafiraq_oli_2023219_lrg.jpg")
plotRGB(najaaug, r=1, g=2, b=3)

par(mfrow=c(2,1))
plotRGB(naja, r=1, g=2, b=3) # im-plotRGB
plotRGB(najaaug, r=1, g=2, b=3)

# multitemporal change detection
najadif = naja[[1]] - najaaug[[1]] 
cl <- colorRampPalette(c("brown", "grey", "orange")) (100)
plot(najadif, col=cl)

# Download your own preferred image:
villarrica2018 <- rast("villarrica_oli_2018013_lrg.jpg")
villarrica2022 <- rast("villarrica_oli_2022008_lrg.jpg")

# crop the object 2018 and 2022
# sample
# r <- rast(xmin=0, xmax=10, ymin=0, ymax=10, nrows=25, ncols=25)
# values(r) <- 1:ncell(r)
# e <- ext(-5, 5, -5, 5)
# rc <- crop(r, e)

#let's do it
e <- ext(100, 1300, 1300, 2500)
ChileanVolcano2018 <- crop(villarrica2018, e)
ChileanVolcano2022 <- crop(villarrica2022, e)

plotRGB(ChileanVolcano2018, r=1, g=2, b=3)
plotRGB(ChileanVolcano2018, r=2, g=1, b=3)
plotRGB(ChileanVolcano2018, r=3, g=2, b=1)

plotRGB(ChileanVolcano2022, r=1, g=2, b=3)
plotRGB(ChileanVolcano2022, r=2, g=1, b=3)
plotRGB(ChileanVolcano2022, r=3, g=2, b=1)

par(mfrow=c(1,2))
plotRGB(ChileanVolcano2018, r=1, g=2, b=3)
plotRGB(ChileanVolcano2022, r=1, g=2, b=3)

# multitemporal change detection
ChileanVolcanodif = ChileanVolcano2018[[1]] - ChileanVolcano2022[[1]] 
cl <- colorRampPalette(c("brown", "grey", "orange")) (100)
plot(ChileanVolcanodif, col=cl)

# The Mato Grosso image can be downloaded directly from EO-NASA:

mato <- rast("matogrosso_l5_1992219_lrg.jpg")
plotRGB(mato, r=1, g=2, b=3) 
plotRGB(mato, r=2, g=1, b=3) 
