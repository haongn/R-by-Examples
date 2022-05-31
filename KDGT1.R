x = c(54, 5, 35, 137, 31, 
      27, 152, 2, 123, 81, 
      74, 27, 11, 19, 126, 
      110, 110, 29, 61, 35, 
      94, 31, 26, 5, 12, 
      4, 165, 32, 29, 28, 
      29, 26, 25, 1, 14, 
      13, 13, 10, 5, 27, 
      4, 52, 30, 22, 36, 
      26, 20, 23, 33, 68)  # nhan xet ve x: DL bien thien rat lon

# kiem dinh t (t-test) 
print(t.test(x, mu = 30))

print(t.test(x, mu = 30, alternative = "less"))

print(t.test(x, mu = 30, alternative = "greater"))
