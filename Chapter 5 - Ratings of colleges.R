dat = read.table('college.txt', header = TRUE, sep = '\t')

head(dat)
str(dat)
unique(dat$Tier)

# 
college = subset(dat, complete.cases(dat))
str(college)
head(college)

# 5.3. Comparing distributions
# stripcharts (one-dimensional scatterplot)
stripchart(college$Retention, method = 'stack', pch = 19, 
           xlab = 'Retention Percentage')

# we next wonder which variables are helpful in explaining the above variation:
# construct parallel stripcharts of the retention rate by Tier: 
stripchart(Retention ~ Tier, method = 'stack', pch = 19, 
           xlab = 'Retention Percentage', 
           ylab = 'Tier', 
           xlim = c(50, 100), 
           data = college)

# Identifying outliers
identify(college$Retention, college$Tier, n = 2, 
         labels = college$School)

# the next step is to summarize the above differences: 
b.output = boxplot(Retention ~ Tier, data = college, 
                  horizontal = TRUE,   # boxplot displayed in horizontal style 
                  ylab = 'Tier', 
                  xlab = 'Retention')

# names(b.ouput)
# display the five-number summaries: 
b.output$stats

# outlying values 
b.output$out
# corresponding groups for outlying values: 
b.output$group

# 5.4. Relationships between variables
plot(college$Retention, college$Grad.rate, 
     xlab = 'Retention', 
     ylab = 'Graduate Rate', 
     pch = 19)

# compute resistant line: 
fit = line(college$Retention, college$Grad.rate)
coef(fit)
fit$coefficients
abline(coef(fit))

# examine residuals: 
fit$residuals
plot(college$Retention, fit$residuals, 
     xlab = 'Retention', 
     ylab = 'Residual')
abline(h = 0)

# identify outliers: 
identify(college$Retention, 
         fit$residuals, 
         n = 2, 
         labels = college$School)








































































































