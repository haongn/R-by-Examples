# Data from a textbook 

# "rep": is used to create the sequence of letters
y1 = c(22, 26)
y2 = c(28, 24, 29)
y3 = c(29, 32, 28)
y4 = c(23, 24)

y = c(y1, y2, y3, y4)
Model = c(rep("A", 2), rep("B", 3), rep("C", 3), rep("D", 2))
print(y)
print(Model)

# create data frame (from above two vectors) (so easyy)
mileages = data.frame(y, Model)  # chu y: hai vector phai co do dai bang nhau?? 
print(str(mileages))

