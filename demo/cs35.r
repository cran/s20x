readline("Press <Enter> to continue:")
opar = par (ask = dev.interactive (orNone = TRUE) )
readline("Press <Enter> to continue:")
cot.smoke<-matrix(c(79,168,46,324),byrow=T,nr=2,nc=2)
readline("Press <Enter> to continue:")
rownames(cot.smoke)<-c("Case","Control")
readline("Press <Enter> to continue:")
colnames(cot.smoke)<-c("Yes","No")
readline("Press <Enter> to continue:")
cot.smoke
readline("Press <Enter> to continue:")
odds.ratio<-(79*324)/(168*46)
readline("Press <Enter> to continue:")
odds.ratio
readline("Press <Enter> to continue:")
log.odds.ratio<-log(odds.ratio)
readline("Press <Enter> to continue:")
log.odds.ratio
readline("Press <Enter> to continue:")
se.log.odds.ratio<-sqrt(1/79+1/168+1/46+1/324)
readline("Press <Enter> to continue:")
se.log.odds.ratio
readline("Press <Enter> to continue:")
test.stat<-log.odds.ratio/se.log.odds.ratio
readline("Press <Enter> to continue:")
test.stat
readline("Press <Enter> to continue:")
2*(1-pnorm(test.stat))
readline("Press <Enter> to continue:")
c.i.<-log.odds.ratio+1.96*se.log.odds.ratio%o%c(-1,1)
readline("Press <Enter> to continue:")
c.i.
readline("Press <Enter> to continue:")
exp(c.i.)
readline("Press <Enter> to continue:")
par (opar)
