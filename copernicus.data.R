# https://land.copernicus.vgt.vito.be/PDF/portal/Application.html

library(ncdf4)
library(terra)

# install.packages("name_of_the_package_here")

# set the working directory based on your path:
# setwd("~/spatial_ecology/Downloads")  # Linux
# setwd("/Users/name/Desktop/spatial_ecology/Downloads")  # Mac 
setwd("C:/spatial_ecology/Downloads")  # Windows

soilm2023 <- rast("c_gls_SSM1km_202311250000_CEURO_S1CSAR_V1.2.1.nc")
plot(soilm2023)

# there are two elements, let's use the first one!
plot(soilm2023[[1]])

cl <- colorRampPalette(c("red", "orange", "yellow")) (100)
plot(soilm2023[[1]], col=cl)

# let's crop the object
ext <- c(22, 26, 55, 57) # minlong, maxlong, minlat, maxlat
soilm2023c <- crop(soilm2023, ext)

plot(soilm2023c[[1]], col=cl)

# new image
soilm2023_24 <- rast("c_gls_SSM1km_202311240000_CEURO_S1CSAR_V1.2.1.nc")
plot(soilm2023_24)
soilm2023_24c <- crop(soilm2023_24, ext)
plot(soilm2023_24c[[1]], col=cl)
