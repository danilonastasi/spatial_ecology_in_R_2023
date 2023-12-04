
# Here I can write anything I want!!! 42 is the meaning of life universe and all!

# R as a calculator
2 + 3

# Assign to an object
zima <- 2 + 3
zima

duccio <- 5 + 3
duccio

final <- zima * duccio
final

final^2

# array
sophi <- c(10, 20, 30, 50, 70) # microplastics 
sophi
# functions have parentheses and inside them there are arguments

paula <- c(100, 500, 600, 1000, 2000) # people
paula

plot(paula, sophi)

# let's insert label to x and y axes
plot(paula, sophi, xlab="number of people", ylab="microplastics")


people <- paula
microplastics <- sophi

plot(people, microplastics)
# let's change the points
plot(people, microplastics, pch=19)
# https://www.google.com/search?client=ubuntu-sn&hs=yV6&sca_esv=570352775&channel=fs&sxsrf=AM9HkKknoSOcu32qjoErsqX4O1ILBOJX4w:1696347741672&q=point+symbols+in+R&tbm=isch&source=lnms&sa=X&ved=2ahUKEwia9brkm9qBAxVrQvEDHbEYDuMQ0pQJegQIChAB&biw=1760&bih=887&dpr=1.09#imgrc=lUw3nrgRKV8ynM

# let's change the size
plot(people, microplastics, pch=19, cex=2)
# and the colour
plot(people, microplastics, pch=19, cex=2, col="blue")
