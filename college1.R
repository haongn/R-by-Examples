college = read.csv("College.csv", header = TRUE)
str(college)

View(college)
dim(college)
summary(college)

# phan tich rieng mot dai luong (mot cot - bien)
tuition = college$Outstate
summary(tuition)
mean(tuition)
sd(tuition)
quantile(tuition)
quantile(tuition, 0.8)

# boxplot 
boxplot(tuition)

# dieu chinh boxplot cho dep hon 
boxplot(tuition, 
        col = "aquamarine", 
        border = "deepskyblue3", 
        lwd = 2, pch = 20, 
        cex = 2, 
        horizontal = TRUE)

# hist 
hist(tuition)
hist(tuition, 
     breaks = 20,               # so luong bin 
     xlab = "Tuition Fee", 
     ylab = "Count", 
     main = "Tuition Dist",     # ten bieu do 
     col = "gold2")    


# scatter plot 
plot(college$Apps, college$Accept)

# nhieu scatter plot cung mot luc 
pairs(college[c(3, 5, 8, 9)])

# he so tuong quan 
cor(college[c(3, 5, 8, 9)])




































