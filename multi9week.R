##거리구하기
##1. 유클리디안 거리 구하기
##(0,0)(2,2)
a<-c(0,0)
b<-c(2,2)
d<-sqrt((2-0)^2+(2-0)^2)
d
data("iris")
head(iris)
dist_E<-round(dist(iris[1:5, 1:2], method = "euclidean"),2)
plot(dist_E, xlab = "Sepal.Length", ylab="Sepal.width", main = "Euclidean Distancd")
##2. 맨하탄 거리
a<-c(0,0)
b<-c(2,2)
d_M<-abs(0-2)+abs(0-2)
d_M
dist_E<-round(dist(iris[1:5, 1:2], method = "manhattan"),2)
plot(dist_E, xlab = "Datas", ylab="Distance", main = "Manhattan Distancd", pch = 19)
##3. 마할라노비스 거리
a<-c(0,0)
b<-c(2,2)
aa<-rbind(a,b)
aa
cov(aa)
##t(x-y)*(cov)-1*(x-y)
i<-iris[1:5, 1:2]
x<-c(5.1,3.5)
y<-c(4.9, 3.0)
x-y
t(x-y)
cov(i)
##역행렬
solve(cov(i))
sqrt(t(x-y)%*%solve(cov(i))%*%(x-y))