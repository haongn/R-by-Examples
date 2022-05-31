# VD3.4. The twins dataset 
twins = read.table('twins.dat.txt', header = TRUE, sep = ',', na.strings = '.')
head(twins)
dim(twins)     # 183 pairs of twins, 16 variables 
str(twins)

plot(twins$HRWAGEH)  # strongly right-skewed

# remove the skewness by a log transformation: 
log.wages = log(twins$HRWAGEH)
plot(log.wages)
head(log.wages)

# goal: comparing the log wages of the high school twins with the log wages 
#       of the college twins

# define a new categorical variable: 
college = ifelse(twins$EDUCH > 12, 'yes', 'no')
college
table(college)


# first step in comparing the log wages of the two groups: 
boxplot(log.wages ~ college, 
        horizontal = TRUE, 
        names = c('High School', 'Some College'), 
        xlab = 'log Wage')


# standard t-test: comparing two mean of two population: 
t.test(log.wages ~ college)

# traditional t-test: assume the population variances are equal: 
t.test(log.wages ~ college, var.equal = TRUE)

# mann-whitney-wilcoxon test: 
wilcox.test(log.wages ~ college, conf.int = TRUE)

# 6.4.4. Permutation test 
log.wages = log(twins$HRWAGEH)
college = ifelse(twins$EDUCH > 12, 'yes', 'no')  # categorical variable 
table(college)
