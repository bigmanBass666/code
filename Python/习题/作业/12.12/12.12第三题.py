import random as r

lst =[]

for i in range(30):
    lst.append(r.randint(0, 40))

print(lst)

max = max(lst)
for i in range(len(lst)):
    if lst[i] == max:
        print(i)