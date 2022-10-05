getwd()
setwd("C:/ksy")
getwd()
library(ade4)
data("olympic")
head(olympic)
class(olympic)
?olympic
sort(olympic$score)
##추출할 요인의 개수 정하기
library(psych)
?fa.parallel
fa.parallel(olympic$tab, fm = "ml", fa ="fa", n.iter= 100)
library(nFactors)
nScree(olympic$tab)
round(eigen(cor(olympic$tab))$values,3)
#요인의 갯수는 2개로 결정
#1) 주성분인자법 principal()
#2) 최우추정법 factanal()
?prinsipal
fap<-principal(olympic$tab,nfactors = 2,rotate = "varimax")
fap
biplot(fap,cex=c(0.5,0.75),main="FA Biplot")
fa<-factanal(olympic$tab,factors = 2,scores = "regression")
fa