lst = ['python.txt','computer','book','program']
str = []
nums = []

for i in lst:
    for j in i:
        if j not in str:
            str.append(j)
            nums.append(1)
        else:
            index = str.index(j)
            nums[index] += 1

for k in range(len(str)):
    print(str[k],nums[k],sep=': ')