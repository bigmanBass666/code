# 输入两个数字，以空格隔开
# 返回数字

# 垃圾法
s = input()
lst = s.split()
a = int(lst[0])
b = int(lst[1])
print(a,b)

# 厉害法
a,b = map(int,input().split())
print(a,b)

# map()返回迭代器