# 4.9. Overlaying a Curve and adding a mathematical expression 
n = 20; p = 0.2
y = 0:20
py = dbinom(y, size = n, prob = p)
plot(y, py, 
     type = 'h', 
     lwd = 3, 
     xlim = c(0, 15), 
     ylab = 'Prob(y)')

mu = n * p; sigma = sqrt(n * p * (1 - p))
curve(dnorm(x, mu, sigma), add = TRUE, lwd = 2, lty = 2, col = 2)
text(10, 0.15, 
     expression(paste(frac(1, sigma * sqrt(2 * pi)), '', e^{frac(-(y - mu)^2, 2 * sigma^2)})), cex = 1.5)
title('Binomial probs with n = 2, p = 0.2, and matching normal curve')

?plotmath  # more about 'expression'
locs = locator(2)
arrows(locs$x[1], locs$y[1], locs$x[2], locs$y[2])

# save pdf file: 
pdf('normal curve approx2.pdf')
plot(y, py, 
     type = 'h', 
     lwd = 3, 
     xlim = c(0, 15), 
     ylab = 'Prob(y)')
curve(dnorm(x, mu, sigma), add = TRUE, lwd = 2, lty = 2, col = 2)
text(10, 0.15, 
     expression(paste(frac(1, sigma * sqrt(2 * pi)), '', e^{frac(-(y - mu)^2, 2 * sigma^2)})), cex = 1.5)
title('Binomial probs with n = 2, p = 0.2, and matching normal curve')
dev.off()








