getwd()
setwd("C:/ksy")
getwd()
library(ade4)
data("olympic")
head(olympic)
class(olympic)
?olympic
sort(olympic$score)
##������ ������ ���� ���ϱ�
library(psych)
?fa.parallel
fa.parallel(olympic$tab, fm = "ml", fa ="fa", n.iter= 100)
library(nFactors)
nScree(olympic$tab)
round(eigen(cor(olympic$tab))$values,3)
#������ ������ 2���� ����
#1) �ּ������ڹ� principal()
#2) �ֿ������� factanal()
?prinsipal
fap<-principal(olympic$tab,nfactors = 2,rotate = "varimax")
fap
biplot(fap,cex=c(0.5,0.75),main="FA Biplot")
fa<-factanal(olympic$tab,factors = 2,scores = "regression")
fa