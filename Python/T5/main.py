lst =[]
lst2 =[]
lst3 = []

for i in range(0 , 10):
    lst2.append(i)

for i in range(10, 20):
    lst3.append(i)
print(lst2, lst3)

lst4 = [lst2, lst3]
print(lst4[1][0])