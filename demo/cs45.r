readline("Press <Enter> to continue:")
opar = par (ask = dev.interactive (orNone = TRUE) )
readline("Press <Enter> to continue:")
data (skulls.df)
readline("Press <Enter> to continue:")
attach (skulls.df)
readline("Press <Enter> to continue:")
Year = factor (Year)
readline("Press <Enter> to continue:")
skulls.df
readline("Press <Enter> to continue:")
interactionPlots (breadth ~ type + Year)
readline("Press <Enter> to continue:")
interactionPlots (breadth ~ Year + type)
readline("Press <Enter> to continue:")
skulls.fit = lm (breadth ~ type + Year + type:Year)
readline("Press <Enter> to continue:")
eovcheck (skulls.fit)
readline("Press <Enter> to continue:")
log.breadth = log (breadth)
readline("Press <Enter> to continue:")
skulls.fit1 = lm (log.breadth ~ type + Year + type:Year)
readline("Press <Enter> to continue:")
eovcheck (skulls.fit1)
readline("Press <Enter> to continue:")
sqrt.breadth = sqrt (breadth)
readline("Press <Enter> to continue:")
skulls.fit2 = lm (sqrt.breadth ~ type + Year + type:Year)
readline("Press <Enter> to continue:")
eovcheck (skulls.fit2)
readline("Press <Enter> to continue:")
normcheck (skulls.fit2)
readline("Press <Enter> to continue:")
summary2way (skulls.fit2, page = "table")
readline("Press <Enter> to continue:")
summary2way (skulls.fit2, page = "interaction")
readline("Press <Enter> to continue:")
par (opar)
