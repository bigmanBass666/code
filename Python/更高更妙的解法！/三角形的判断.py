num = list(map(int, input().split()))
num .sort()

if num[0] + num[1] <= num[2]:  # 两短边之和小于第三遍，三角形不成立
    print("Not a triangle!")