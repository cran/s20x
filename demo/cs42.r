readline("Press <Enter> to continue:")
opar = par (ask = dev.interactive (orNone = TRUE) )
readline("Press <Enter> to continue:")
data (fruitfly.df)
readline("Press <Enter> to continue:")
attach (fruitfly.df)
readline("Press <Enter> to continue:")
fruitfly.df
readline("Press <Enter> to continue:")
stripchart (fecundity ~ strain, pch = 1, vert = TRUE,
readline("Press <Enter> to continue:")
	main = "Fecundity by Strain", xlab = "strain", ylab = "fecundity")
readline("Press <Enter> to continue:")
summaryStats (fecundity ~ strain)
readline("Press <Enter> to continue:")
fruitfly.fit = lm (fecundity ~ strain)
readline("Press <Enter> to continue:")
eovcheck (fruitfly.fit)
readline("Press <Enter> to continue:")
normcheck (fruitfly.fit)
readline("Press <Enter> to continue:")
summary1way (fruitfly.fit)
readline("Press <Enter> to continue:")
multipleComp (fruitfly.fit)
readline("Press <Enter> to continue:")
par (opar)