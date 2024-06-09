lst = ['python.txt','computer','book','program']
dict = {}

for i in lst:
    for j in i:
        dict[j] = dict.get(j,0) + 1

print(dict)