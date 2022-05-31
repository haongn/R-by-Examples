load(file = 'Data/sulfurdio.rda')  # load R data file 

sulfurdioxide = sulfurdio
typeof(sulfurdioxide)
sulfurdioxide
str(sulfurdioxide)

# convert list to vector: 
sulfurdioxide = unlist(sulfurdioxide)

mean(sulfurdioxide); var(sulfurdioxide)


# estimated histogram (default R): 
hist(sulfurdioxide, xlab = 'Sulfurdioxide', ylab = '', pr = T, ylim = c(0, .04))
lines(density(sulfurdioxide))  # estimated histogram 

y = dnorm(sulfurdioxide, 53.91667, 10.07371)
lines(y~sulfurdioxide, lty = 2)















