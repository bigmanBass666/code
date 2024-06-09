import random as r

classes = [[],[],[]]
teachers = ['A','B','D','D','E','F','G','H']

for i in teachers:
    r.choice(classes).append(i)

print(classes)