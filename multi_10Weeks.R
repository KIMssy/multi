data("USArrests")
str(USArrests)
z<-data.frame(scale(USAccDeaths))
head(z)
d_eus1<-dist(z, method = "euclidean")
hc_single<-hclust(d_eucl, method = "single")
library(cluster)
cop_single<-cophenetic(hc_single)
cor(cop_single, d_euc1)
agnes(z, method="single")$ac
hc_compl<-hclust(d_eucl, method = "complete")
cop_compl<-cophenetic(hc_compl)
cor(cop_compl,d_eucl)
agnes(z, method = "complete")$ac
hc_ave<-hclust(d_eus1, method = "average")
cop_ave<-cophenetic(hc_ave)
cor(cop_ave, d_euc1)
agnes(z, method = "complete")$ac
?dist
d_manh<-dist(z, method = "manhattan")
hc_single<-hclust(d_manh, method = "single")
cop_ave<-cophenetic(hc_single)
cor(cop_single, d_manh)
agnes(z, method = "single")$ac