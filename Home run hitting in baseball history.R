hitting.data = read.table('batting.history.txt', header = TRUE, sep = '\t')
attach(hitting.data)

head(hitting.data)
str(hitting.data)

# construct a time series plot of home runs against season 
plot(Year, HR)

# 4.2. Labeling the axes and adding a title 
# default: scatter plot 
plot(Year, HR, 
     xlab = 'Season', 
     ylab = 'Avg HR Hit Per Team Per Game', 
     main = 'Home Run Hitting in the MLB Across Seasons')  # add a title 

# connect the points with lines: 
plot(Year, HR, 
     xlab = 'Season', 
     ylab = 'Avg. Home Runs Hit bya Team in a Game', 
     type = 'l', 
     main = 'Home Run Hitting in the MLB Across Seasons')

# show both points and connecting lines: 
plot(Year, HR, 
     xlab = 'Season', 
     ylab = 'Avg. Home Runs Hit bya Team in a Game', 
     type = 'b', 
     main = 'Home Run Hitting in the MLB Across Seasons')

# show no points at all: nothing is plotted
plot(Year, HR, 
     xlab = 'Season', 
     ylab = 'Avg. Home Runs Hit bya Team in a Game', 
     type = 'n', 
     main = 'Home Run Hitting in the MLB Across Seasons')

# not drawing the x axis:
plot(Year, HR, 
     xlab = 'Season', 
     ylab = 'Avg. Home Runs Hit bya Team in a Game', 
     type = 'b', 
     xaxt = 'n',
     main = 'Home Run Hitting in the MLB Across Seasons')

# not drawing both x and y axes: 
plot(Year, HR, 
     xlab = 'Season', 
     ylab = 'Avg. Home Runs Hit bya Team in a Game', 
     type = 'b', 
     xaxt = 'n',
     yaxt = 'n',
     main = 'Home Run Hitting in the MLB Across Seasons')


# 
row = rep(1:3, each = 7)
col = rep(1:7, times = 3)
plot(2, 3,
     xlim = c(.5, 3.5), 
     ylim = c(.5, 7.5), 
     type = 'n', 
     #xaxt = 'n', 
     #yaxt = 'n', 
     xlab = '', 
     ylab = '',)
points(row, col, pch = 0:20, cex = 3)
text(row, col, 0:20, pos = 4, offset = 2, cex = 1.5)  # display text on the current graph
title('Plotting Symbols with the pch Argument')

# 
plot(Year, HR, 
     xlab = 'Season', 
     cex = 1.5, 
     pch = 19, 
     ylab = 'Avg. Home Runs Hit by a Team in a Game', 
     main = 'Home Run Hitting in the MLB Across Seasons')

plot(Year, HR, 
     xlab = 'Season', 
     cex = 1.5, 
     pch = 1, 
     ylab = 'Avg. Home Runs Hit by a Team in a Game', 
     main = 'Home Run Hitting in the MLB Across Seasons')

plot(Year, HR, 
     xlab = 'Season', 
     cex = 1.5, 
     pch = 0, 
     ylab = 'Avg. Home Runs Hit by a Team in a Game', 
     main = 'Home Run Hitting in the MLB Across Seasons')



plot(Year, HR, 
     xlab = "Season",
     ylab = "Avg. Home Runs Hit by a Team in a Game",
     main = "Home Run Hitting in the MLB Across Seasons")
lines(lowess(Year, HR))
lines(lowess(Year, HR), type = 'b')
lines(lowess(Year, HR, f = 1/3))
lines(lowess(Year, HR, f = 1/10))
lines(lowess(Year, HR, f = 1/20))

# setup lty (line style) and lwd (line width): 
plot(0, 0, 
     type = 'n', 
     xlim = c(-2, 2), 
     ylim = c(-2, 2), 
     xaxt = 'n', 
     yaxt = 'n', 
     xlab = '', 
     ylab = '')
y = seq(2, -3, -1) # a sequence of decreasing intercept b
for (j in 1:6)
  abline(a = y[j], b = 1, lty = j, lwd = 2)
legend('topleft',
       legend = c('solid', 'dashed', 'dotted', 'dotdash', 'longdash', 'twodash'), 
       )
title('Line Styles with the lty Argument')

# redraw the smooth function: 
plot(Year, HR, 
     xlab = 'Season', 
     ylab = 'Avg. Home Runs Hit by a Team in a Game', 
     main = 'Home Run Hitting in the MLB Across Seasons')
lines(lowess(Year, HR), lwd = 2)
lines(lowess(Year, HR, f = 1/3), lty = 'dashed', lwd = 2)
lines(lowess(Year, HR, f = 1/12), lty = 'dotdash', lwd = 2)
legend('topleft', 
       legend = c('f = 2/3', 'f = 1/3', 'f = 1/12'), 
       lty = c(1, 2, 4), 
       lwd = 2, 
       inset = 0.05  # lui theo huong bottom-left
       )

# 4.5. Using different colors for points and lines 
colors()

plot(1:10, c(5, 4, 3, 2, 1, 2, 3, 4, 3, 2), 
     pch = 19, 
     cex = 5, 
     col = c('red', 'blue', 'green', 'beige', 'goldenrod', 
             'turquoise', 'salmon', 'purple', 'pink', 'seashell'))

# we can also specify colors by number: 
palette()
help("palette")

plot(0, 0, 
     type = 'n', 
     xlim = c(-2, 2), 
     ylim = c(-2, 2), 
     xaxt = 'n', 
     yaxt = 'n', 
     xlab = '', 
     ylab = '')
y = c(-1, 1, 0, 50000)
for (j in 1:4)
  abline(a = 0, b = y[j], lty = j, lwd = 4, col = j)

# 4.6. Changing the format of text 
plot(0, 0, 
     type = 'n', 
     xlim = c(-1, 6), 
     ylim = c(-0.5, 4), 
     # xaxt = 'n', 
     # yaxt = 'n', 
     xlab = '', 
     ylab = '', 
     main = 'Font Choices Using, font, family and str Arguments')
text(2.5, 4, 'font = 1 (Default)')
text(1, 3, 'font = 2 (Bold)', font = 2, cex = 1.0)
text(1, 2, 'font = 3 (Italic)', font = 3, cex = 1.0)
text(1, 1, 'font = 4 (Bold Italic), str = 20', font = 4, cex = 1.0, srt = 20)

# select font family: 
text(4, 3, 'family = serif', cex = 1.0, family = 'serif')
text(4, 2, 'family = sans', cex = 1.0, family = 'sans')
text(4, 1, 'family = mono', cex = 1.0, family = 'mono')
text(2.5, 0, 'family = HersheyScript', cex = 2.5, family = 'HersheyScript', col = 'red')

# 4.7. Interacting with the graph 
fit = lowess(Year, HR, f = 1/12)
Residual = HR - fit$y
plot(Year, Residual)
abline(h = 0)

identify(Year, Residual, n = 2, labels = Year)

# 4.8. Multiple figures in a window
par(mfrow = c(3, 2))
par(mfrow = c(1, 1))


par(mfrow = c(2, 1))
plot(Year, HR, 
     xlab = 'Season', 
     ylab = 'Avg HR Hit Per Team Per Game', 
     main = 'Home Run Hitting in the MLB Across Seasons')
lines(fit, lwd = 2)
plot(Year, Residual, 
     xlab = 'Season', 
     ylab = 'Residual', 
     main = 'Residuals from Lowess Fit')
abline(h = 0)

# exporting a graph: 
pdf('homerun.pdf')
plot(Year, HR, 
     xlab = 'Season', 
     ylab = 'Avg Home Runs Hit by a Team in a Game', 
     main = 'Home Run Hitting in the MLB Across Seasons')
lines(lowess(Year, HR))
lines(lowess(Year, HR, f = 1/3), lty = 2)
lines(lowess(Year, HR, f = 1/6), lty = 3)
legend('topleft', 
       legend = c('f = 2/3', 'f = 1/3', 'f = 1/6'), 
       lty = c(1, 2, 3))
dev.off()


?Devices














































































































































