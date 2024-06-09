num = int(input())

nums = [i for i in range(1,num + 1)]
luck = [j for j in nums if j % 6 == 0]

print(nums)
print(luck)