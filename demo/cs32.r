opar = par (ask = dev.interactive (orNone = TRUE) )

data (course.df)

course.df
attach(course.df)
pairs.20x(data.frame(Exam,Assign,Test,Years.Since))
exam.fit<-lm(Exam~Assign+Test+Stage1+Gender+Attend+ Years.Since+Repeat+Degree)
plot(exam.fit,which=1)
summary(exam.fit)
anova(exam.fit)
exam.fit1<-lm(Exam~Assign+Test+Stage1+Gender+Attend+Years.Since+Repeat)
summary(exam.fit1)
exam.fit2<-lm(Exam~Assign+Test+Stage1+Gender+Attend+Repeat)
summary(exam.fit2)
exam.fit3<-lm(Exam~Assign+Test+Stage1+Attend+Repeat)
summary(exam.fit3)
exam.fit4<-lm(Exam~Assign+Test+Stage1+Repeat)
summary(exam.fit4)
exam.fit5<-lm(Exam~Assign+Test+Stage1)
summary(exam.fit5)
plot(exam.fit5,which=1)
layout.20x(1,2)
plot(residuals(exam.fit5)~Assign,main="Residual plot (Assign)")
lines(lowess(Assign,residuals(exam.fit5)))
plot(residuals(exam.fit5)~Test,main="Residual plot (Test)")
lines(lowess(Test,residuals(exam.fit5)))
layout.20x(1,1)
exam.fit6<-lm(Exam~Assign+Test+I(Test^2)+Stage1)
summary(exam.fit6)
plot(exam.fit6,which=1)
cooks.20x(exam.fit6)
course.df[106,]
obs<-1:146
plot(Test~Assign,type="n",main="Test versus Assign")
text(Assign,Test,obs)
exam.fit7<-lm(Exam~Assign+Test+I(Test^2)+Stage1,data=course.df[-106,])
summary(exam.fit7)$coef
summary(exam.fit6)$coef
plot(exam.fit6,which=2)
shapiro.test(residuals(exam.fit6))
ci.reg(exam.fit6)
Stage1<-factor(Stage1,levels=c("B","C","A"))
exam.fit6a<-lm(Exam~Assign+Test+I(Test^2)+Stage1)
summary(exam.fit6a)$coef
ci.reg(exam.fit6a)
test<-seq(4,20,by=0.01)
exam<- -1.2472*test+(0.13846*(test^2))
matplot(test,exam,type="l",main="Exam versus Test",xlab="test",ylab="eaxm")

detach(course.df)
par (opar)


