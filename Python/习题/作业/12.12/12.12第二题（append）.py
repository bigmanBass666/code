lst1 = [i for i in range(10)]
lst2 = []
print(lst1)

for i in lst1[1:]:
    lst2.append(i)

lst2.append(lst1[0])
print(lst2)