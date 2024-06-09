import random as r

classes = [[],[],[]]
teachers = ['A','B','D','D','E','F','G','H']

for i in teachers:
    R = r.randint(0, 2)
    classes[R].append(i)

print(classes)