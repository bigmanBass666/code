import random

number = []

num = int(30)
for i in range(num):
    a = random.randint(1,9)
    number.append(a)

print(number)
b = max(number)  #找最大值
d = number.index(b)#最大值索引
f = number.count(b)#最大值个数
print(f'最大值有{f}个')
# def ip(f):
#     number.pop()
if  f==2:
    number.pop(d)
    d1 = number.index(b)
    print(f'第一个索引{d}')
    print(f'第二个索引{d1}')
elif f==3:
    number.pop(d)
    d1 = number.index(b)
    number.pop(d1)
    d2 = number.index(b)
    print(f'第一个索引{d}')
    print(f'第二个索引{d1}')
    print(f'第二个索引{d2}')
elif f==4:
    number.pop(d)
    d1 = number.index(b)

    number.pop(d1)
    d2 = number.index(b)

    number.pop(d2)
    d3 = number.index(b)
    print(f'第一个索引{d}')
    print(f'第二个索引{d1}')
    print(f'第二个索引{d2}')
    print(f'第二个索引{d3}')
elif f==5:
    number.pop(d)
    d1 = number.index(b)
    number.pop(d1)
    d2 = number.index(b)
    number.pop(d2)
    d3 = number.index(b)
    number.pop(d3)
    d4 = number.index(b)
    print(f'第一个索引{d}')
    print(f'第二个索引{d1}')
    print(f'第二个索引{d2}')
    print(f'第二个索引{d3}')
    print(f'第二个索引{d4}')
elif f==6:
    number.pop(d)
    d1 = number.index(b)
    number.pop(d1)
    d2 = number.index(b)
    number.pop(d2)
    d3 = number.index(b)
    number.pop(d3)
    d4 = number.index(b)
    number.pop(d4)
    d5 = number.index(b)
    print(f'第一个索引{d}')
    print(f'第二个索引{d1}')
    print(f'第二个索引{d2}')
    print(f'第二个索引{d3}')
    print(f'第二个索引{d4}')
    print(f'第二个索引{d5}')
elif f==7:
    number.pop(d)
    d1 = number.index(b)
    number.pop(d1)
    d2 = number.index(b)
    number.pop(d2)
    d3 = number.index(b)
    number.pop(d3)
    d4 = number.index(b)
    number.pop(d4)
    d5 = number.index(b)
    number.pop(d5)
    d6 = number.index(b)
    print(f'第一个索引{d}')
    print(f'第二个索引{d1}')
    print(f'第二个索引{d2}')
    print(f'第二个索引{d3}')
    print(f'第二个索引{d4}')
    print(f'第二个索引{d5}')
    print(f'第二个索引{d6}')
else:
    print(f'索引：{d}')
