readline("Press <Enter> to continue:")
opar = par (ask = dev.interactive (orNone = TRUE) )
readline("Press <Enter> to continue:")
data (books.df)
readline("Press <Enter> to continue:")
attach (books.df)
readline("Press <Enter> to continue:")
books.df
readline("Press <Enter> to continue:")
boxplot (length ~ book, main = "Length by Book", xlab = "book", ylab = "length")
readline("Press <Enter> to continue:")
summaryStats (length ~ book)
readline("Press <Enter> to continue:")
books.fit = lm (length ~ book)
readline("Press <Enter> to continue:")
eovcheck (books.fit)
readline("Press <Enter> to continue:")
log.length = log (length)
readline("Press <Enter> to continue:")
books.fit1 = lm (log.length ~ book)
readline("Press <Enter> to continue:")
eovcheck (books.fit1)
readline("Press <Enter> to continue:")
normcheck (books.fit1)
readline("Press <Enter> to continue:")
summary1way (books.fit1)
readline("Press <Enter> to continue:")
multipleComp (books.fit1)
readline("Press <Enter> to continue:")
par (opar)
