lst = ['python.txt','computer','book','program']
dict = {}

for i in lst:
    for j in i:
        if j not in dict:
            dict[j] = 1
        else:
            dict[j] += 1

print(dict)