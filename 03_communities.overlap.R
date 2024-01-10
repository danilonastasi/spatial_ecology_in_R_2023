# relation among species in time

# install.packages("overlap")
library(overlap)

# data_kerinci: Times of 'capture' of large mammals
# https://rdrr.io/cran/overlap/man/data_kerinci.html
# A data frame with 1098 rows and three columns:
# Zone: A number indicating which of four zones the record comes from.
# Sps: A factor indicating which species was observed: boar (wild pig), clouded leopard, 
# golden cat, macaque, muntjac, sambar deer, tapir, or tiger.
# Time: The time of the observation on a scale of 0 to 1, where 0 and 1 
both correspond to midnight.

data(kerinci)
summary(kerinci) # summary is a generic function used to produce result summaries 
                 # of the results of various model fitting functions

kerinci$timeRad <- kerinci$Time * 2 * pi # add a new column

tiger <- kerinci[kerinci$Sps=="tiger",]

timetig <- tiger$timeRad
densityPlot(timetig, rug=TRUE) # If TRUE, the original observations will be 
                               # displayed as a rug at the bottom of the plot.

# exercise: select only the data on macaque individuals
macaque <- kerinci[kerinci$Sps=="macaque",]
head(macaque)

timemac <- macaque$timeRad
densityPlot(timemac, rug=TRUE)

overlapPlot(timetig, timemac)
