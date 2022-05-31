# flipping a coin 2o times 
tosses = scan(what = 'character')   # character vector
# T H H T H H T H H T T 
# H T T T 
# H H H T

# table of frequencies of the different outcomes: 
table(tosses)

# calculating relative frequencies 
prop.tosses = table(tosses) / length(tosses)

class(tosses)
str(tosses)

plot(prop.tosses)   # line graph 
barplot(prop.tosses)

# VD3.2. Rolling a dice

y = c(1, 4, 3, 5, 4, 2, 4)
possible.rolls = 1:6
labels.rolls = c('one', 'two', 'three', 'four', 'five', 'six')
# construct factor variable: 
fy = factor(y, levels = possible.rolls, labels = labels.rolls)
fy

# frequency table 
table(fy)

# VD3.3. Weldon's dice 
k = 0:12 
p = dbinom(k, size = 12, prob = 1/3)
# the expected outcomes in 26,306 rolls of 12 fair dice wouble be: 
Binom = round(26306 * p)
names(Binom) = k  # add labels for the binomial counts 
Binom

# Weldon's data 
Weldon = c(185, 1149, 3265, 5475, 6114, 5194, 3067, 
           1331, 403, 105, 14, 4, 0)
names(Weldon) = k   # add labels for each value

# combine data into a dataframe: 
data.frame(Binom, Weldon, Diff = Weldon - Binom)

# visual comparison of the observed and expected counts 
counts = cbind(Binom, Weldon)
barplot(counts, beside = TRUE)

# interpret the data on a single plot 
plot(k, Binom, type = 'h', lwd = 2, lty = 1, ylab = 'Count')
lines(k + .2, Weldon, type = 'h', lwd = 2, lty = 2)
legend(8, 5000, legend = c('Binomial', 'Weldon'), 
       lty = c(1, 2), lwd = c(2, 2))

# chi-square goodness-of-fit test 
# de co the sd duoc chi-square test, ta se su gop cac gia tri cua 10, 11, 12 vao
# lam mot de co the du dieu kien sd test.
cWeldon = c(Weldon[1:10], sum(Weldon[11:13]))
cWeldon

# apply chi-square test 
probs = c(p[1:10], 1 - sum(p[1:10]))
chisq.test(cWeldon, p = probs)

# examine the Pearson residuals: 
test = chisq.test(cWeldon, p = probs)
plot(0:10, test$residuals, 
     xlab = 'k', ylab = 'Residuals')
abline(h = 0)





