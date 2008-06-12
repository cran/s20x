opar = par (ask = dev.interactive (orNone = TRUE) )

data (course.df)
attach(course.df)
stripchart(Exam~Attend,pch=1,method="stack", ylab="regularly attend",xlab="exam mark",main="Exam by Attend")
numerical.summary(Exam~Attend)
t.test(Exam~Attend)

detach(course.df)
par (opar)






