# 24 observations: 
sleep = c(7.75, 8.5, 8, 6, 8, 6.33, 8.17, 7.75, 
          7, 6.5, 8.75, 8, 7.5, 3, 6.25, 8.5, 9, 6.5, 
          9, 9.5, 9, 8, 8, 9.5)

# creating group variables: 
nine.hours = ifelse(sleep >= 9, 'yes', 'no')   # a vector 
nine.hours
table(nine.hours)

# traditional Z test: 
y = 5; n = 24    
Test = prop.test(y, n, p = 0.5, 
                 alternative = 'two.sided', 
                 correct = FALSE)
Test    

names(Test)
Test$estimate
Test$statistic   # chi-square statistic
Test$p.value
# estimate the proportion by a confidence interval: 
Test$conf.int


# 6.2.4. Small sample methods (Adjusted Z test)
y = 5; n = 24
Test.adj = prop.test(y, n, p = 0.5, 
                     alternative = 'two.sided', 
                     correct = TRUE)
c(Test.adj$statistic, p.value = Test.adj$p.value)


# binomial test: 
Test.exact = binom.test(y, n, p = 0.5)
c(Test.exact$statistic, p.value = Test.exact$p.value)

# check the computation of the p-value: 
2 * pbinom(5, size = 24, prob = 0.5)

Test.exact$conf.int

# Agresti and Coull confidence interval: 
agresti.interval = function(y, n, conf = 0.95){
    n1 = n + 4
    y1 = y + 2
    phat = y1 / n1
    me = qnorm(1 - (1 - conf) / 2) * sqrt(phat * (1 - phat) / n1)
    c(phat - me, phat + me)
}
agresti.interval(y, n)


# liet ke lai 3 pp o tren: 
cnames = c('Wilson Score Interval', 'Clopper - Pearson', 
           'Agresti - Coull')
cfunctions = c('prop.test', 'binom.test', 'agresti.interval')
intervals = rbind(Test$conf.int, Test.exact$conf.int, 
                  agresti.interval(y, n))
data.frame(Names = cnames, Functions = cfunctions, 
           LO = intervals[, 1], HI = intervals[, 2])









































































































