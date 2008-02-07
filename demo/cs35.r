opar = par (ask = dev.interactive (orNone = TRUE) )

cot.smoke<-matrix(c(79,168,46,324),byrow=T,nr=2,nc=2)
rownames(cot.smoke)<-c("Case","Control")
colnames(cot.smoke)<-c("Yes","No")
cot.smoke
odds.ratio<-(79*324)/(168*46)
odds.ratio
log.odds.ratio<-log(odds.ratio)
log.odds.ratio
se.log.odds.ratio<-sqrt(1/79+1/168+1/46+1/324)
se.log.odds.ratio
test.stat<-log.odds.ratio/se.log.odds.ratio
test.stat
2*(1-pnorm(test.stat))
c.i.<-log.odds.ratio+1.96*se.log.odds.ratio%o%c(-1,1)
c.i.
exp(c.i.)

par (opar)






