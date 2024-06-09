lst = [i for i in range(10)]
dummy = lst[0]
print(lst)

for i in range(9):
    lst[i] = lst[i + 1]

lst[-1] = dummy
print(lst)