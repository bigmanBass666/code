num = int(input())

nums = [i for i in range(1,num + 1)]
luck = []

for j in nums:
    if j % 6 == 0:
        luck.append(j)

print(nums)
print(luck)