data("cars")
head(cars)
dim(cars)
summary(cars)
plot(cars$speed,cars$dist,pch=19)
cor.test(cars$speed, cars$dist)
model<-lm(cars$dist~cars$speed, data = cars)
summary(model)
plot(plot(cars$speed, cars$dist, pch =19))
abline(corf(model), c = "red", lty = 5, lwd = 2)
predict(model, newdata = data.frame(speed=20))
model$coefficients
a = 3.932409
b = -17.579095
y = a * 20 * b
y
b=model$coefficients[1]
b
a=model$coefficients[2]
a
library(MASS)
data("Cars93")
head(Cars93)
str(Cars93)
model<-lm(Price~Enginesize+Horsepower+RPM+width+Length+Weight, data = Cars93)
summary(model)
step(model, direction = "backward")