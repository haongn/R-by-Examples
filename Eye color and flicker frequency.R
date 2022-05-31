data = read.table('flicker.txt', header = TRUE)

str(data)

is.factor(data$Colour)

data$Colour = as.factor(data$Colour)

attach(data)

boxplot(Flicker ~ Colour, ylab = 'Flicker')

stripchart(Flicker ~ Colour, vertical=TRUE)

# compare the means and standard deviations of the three groups
by(Flicker, Colour, FUN = mean)

meansd = function(x) c(mean=mean(x), sd=sd(x))
by(Flicker, Colour, FUN=meansd)

# test for unequal variances 
oneway.test(Flicker ~ Colour)
# test for equal variances 
oneway.test(Flicker ~ Colour, var.equal = TRUE)

L = lm(Flicker ~ Colour)
L
