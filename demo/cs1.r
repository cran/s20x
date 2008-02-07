opar = par (ask = dev.interactive (orNone = TRUE) )

data (STATS20x)
course.df = STATS20x
attach(course.df)
Exam
stripchart(Exam,method="stack",pch=1,main="STATS 20x Exam marks",xlab="exam mark")
layout.20x(1,2)
hist(Exam)
plot(density(Exam))
numerical.summary(Exam)
t.test(Exam)
layout.20x(1,1)

par (opar)








