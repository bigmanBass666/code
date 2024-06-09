# 请统计某个给定范围[L, R]的所有整数中，数字2出现的次数。
# 比如给定范围[2, 22]，
# 数字2在数2中出现了1次，在数12中出现1次，在数20中出现1次，在数21中出现1次，在数22中出现2次，所以数字2在该范围内一共出现了6次。

def f(l,r,sum = 0):
    count = str(l).count('2')
    sum += count

    if l == r:
        return sum
    return f(l + 1,r,sum = sum)


L,R = map(int,input().split())
print(f(L,R))

# 正常做法
# L,R = map(int,input().split())

# sum = 0

# for i in range(L,R + 1):
#     count = str(i).count('2')
#     sum += count

# print(sum)