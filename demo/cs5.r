opar = par (ask = dev.interactive (orNone = TRUE) )

data (course.df)

attach(course.df)
diffs<-Assign-Test
stripchart(diffs,pch=1,method="stack",main="Assignment score - Test score",xlab="differences")
numerical.summary(diffs)
t.test(Assign,Test,paired=T)

detach(course.df)
par (opar)





