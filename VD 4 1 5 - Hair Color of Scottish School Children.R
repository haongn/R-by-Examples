# import rda file 
load(file = 'Data/scotteyehair.rda')

vec = scotteyehair

# inspect first 
head(vec)

# we consider hair color: 
vec = colSums(vec)
vec

n = sum(vec)
vecs = sort(vec, decreasing = T)/n 
nms = c('Medium', 'Fair', 'Dark', 'Red', 'Black')

# draw bar plot (qualitative x)
barplot(vecs, beside = TRUE, names.arg = nms, ylab = 'prob', xlab = 'Haircolor')







