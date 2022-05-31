# kiem dinh z-test cho ty le trong tong the 
print(prop.test(116, 240, p = 0.46, 
          alternative = "greater", 
          correct = FALSE))


print(prop.test(116, 240, p = 0.46, 
                alternative = "less", 
                correct = FALSE))

# kiem dinh hai phia 
print(prop.test(116, 240, p = 0.46, 
          correct = FALSE))

