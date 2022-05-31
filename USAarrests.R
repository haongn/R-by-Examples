head(USArrests)
class(USArrests)    # data frame

# the number of observations (rows)
NROW(USArrests)
NCOL(USArrests)

# dimension 
dim(USArrests)


# names of variables (columns)
names(USArrests)
# names of index column 
rownames(USArrests)

# structure of the data 
str(USArrests)

# convert data frame to matrix (because the data are all numbers)
arrests = as.matrix(USArrests)
str(arrests)

# missing values 
any(is.na(USArrests))
is.na(USArrests)

# Compute summary statistics
summary(USArrests)

# Extract data from a data frame
USArrests["California", "Murder"]  # lay mot o (cell) cua data frame 
USArrests["California", ]          # lay mot quan sat 

# Extract a variable using $
USArrests$Assault

# Histograms
hist(USArrests$Assault)

library(MASS)
truehist(USArrests$Assault)
hist(USArrests$Assault, prob = TRUE, breaks = "scott")


attach(USArrests)
murder.pct = 100 * Murder / (Murder + Assault + Rape)
head(murder.pct)
head(murder.pct, 3)
detach(USArrests)


attach(USArrests)
plot(UrbanPop, Murder)
pairs(USArrests)        # scatter plot for ech pair of variables 
cor(UrbanPop, Murder)   # covariance matrix 
cor(USArrests)














