# VD3.4. The twins dataset 
twn = read.table('twins.dat.txt', header = TRUE, sep = ',', na.strings = '.')
head(twn)
dim(twn)
str(twn)

# obtain frequency table of educational years 
table(twn$EDUCL)
table(twn$EDUCH)

# cut function to transform variable: 
c.EDUCL = cut(twn$EDUCL, breaks = c(0, 12, 15, 16, 24), 
              labels = c('High School', 'Some College', 'College Degree',
                         'Graduate School'))
c.EDUCH = cut(twn$EDUCH, breaks = c(0, 12, 15, 16, 24), 
              labels = c('High School', 'Some College', 'College Degree', 
                         'Graduate School'))
head(c.EDUCH)
head(c.EDUCL)

table(c.EDUCL)
prop.table(table(c.EDUCL))
barplot(prop.table(table(c.EDUCL)))

# mosaic plot 
mosaicplot(table(c.EDUCL))

# contingency table 
table(c.EDUCL, c.EDUCH)

# what proportion of twins have the same level: 
T1 = table(c.EDUCL, c.EDUCH)
diag(T1)
sum(diag(T1)) / sum(T1)  # compute the proportion of twins having the same educational level 
plot(T1)   # mosaic plot 

c.wage = cut(twn$HRWAGEL, c(0, 7, 13, 20, 150))
table(c.wage)
table(c.EDUCL, c.wage)

sum(is.na(twn$HRWAGEL))  # so luong twin 1 khong co bao cao luong 

# compute the proportions of different wages for each educational level: 
T2 = table(c.EDUCL, c.wage)
T2
prop.table(T2, margin = 1)

# graphing patterns of association: 
# displaying the conditional proportions in the contingency table: 

# segmented bar chart: 
P = prop.table(T2, 1)   # proportion matrix 
P
barplot(t(P), ylim = c(0, 1.5), ylab = 'Proportions', 
        legend.text = dimnames(P)$c.wage, 
        args.legend = list(x = 'top'))
# side-by-side barplot (for contingency table -> proportion table)
barplot(t(P), beside = TRUE, 
        legend.text = dimnames(P)$c.wage, 
        args.legend = list(x = 'topleft'), 
        ylab = 'Proportion')

# testing independence by a chi-square test 
# this statistical test will give new insight on how 
# education and income are related. 
T2 = table(c.EDUCL, c.wage)   # contingency table
T2
# perform a test of independence: 
S = chisq.test(T2)
print(S)  # print the results of the test

# confirm the calculations of this statistical test above: 
S$expected

sum((T2 - S$expected)^2 / S$expected)  # chi-square 

# check the computation of the p-value 
1 - pchisq(54.57759, df = 9)

# all of the calculations of the chi-square test: 
names(S)

S$residuals
















































































