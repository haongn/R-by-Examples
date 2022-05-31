# test the hypothesis that the mean sleeping time is 8 hours, 
# and construct a 90% interval estimate for the population mean. 

# data: 
sleep = c(7.75, 8.5, 8, 6, 8, 6.33, 8.17, 7.75, 
          7, 6.5, 8.75, 8, 7.5, 3, 6.25, 8.5, 9, 6.5, 
          9, 9.5, 9, 8, 8, 9.5)

# check if it is reasonable to assume the sleeping times are normally distributed. 
hist(sleep)  # construct histogram (with default bandwidth h)
qqnorm(sleep)
qqline(sleep)

# identify the position of the outlier (constructing an index plot): 
plot(sleep)
# => it is clear that the 14th observation is the outlier. 
sleep.new = sleep[-14]   # delete the outlier 


# apply the procedures based on the t distribution: 
t.test(sleep.new, 
       mu = 8,  
       conf.level = 0.90)

# check the sample mean: 
mean(sleep.new)


# Wilcoxon test: (using origial data)
W = wilcox.test(sleep, mu = 8, 
                conf.int = TRUE, 
                conf.level = 0.90)
W

names(W)
W$statistic
W$p.value
W$conf.int
















