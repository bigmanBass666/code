import random

number = []

num = int(40)
for i in range(num):
    a = random.randint(1,9)
    number.append(a)
print(number)
b =  max(number)  #找最大值
d = number.index(b)#最大值索引
f = number.count(b)#最大值个数
print(f'最大值有{f}个')
# def ip(f):
#     number.pop()
if  f==2:
    number.pop(d)
    d1 = number.index(b)
    a2 =int(d1)
    print(f'第一个索引{d}')
    print(f'第二个索引{a2}')
elif f==3:
    number.pop(d)
    d1 = number.index(b)
    a2 = int(d1) + 2
    number.pop(d1)
    d2 = number.index(b)
    a3 = int(d2) + 3
    print(f'第一个索引{d}')
    print(f'第二个索引{a2}')
    print(f'第三个索引{a3}')

elif f==4:
    number.pop(d)
    d1 = number.index(b)
    a2 = int(d1) + 2
    number.pop(d1)
    d2 = number.index(b)
    a3 = int(d2) + 3
    number.pop(d2)
    d3 = number.index(b)
    a4 = int(d3) + 4
    print(f'第一个索引{d}')
    print(f'第二个索引{a2}')
    print(f'第三个索引{a3}')
    print(f'第四个索引{a4}')

elif f==5:
    number.pop(d)
    d1 = number.index(b)
    a2 = int(d1) + 2
    number.pop(d1)
    d2 = number.index(b)
    a3 = int(d2) + 3
    number.pop(d2)
    d3 = number.index(b)
    a4 = int(d3) + 4
    number.pop(d3)
    d4 = number.index(b)
    a5 = int(d4) + 5
    print(f'第一个索引{d}')
    print(f'第二个索引{a2}')
    print(f'第三个索引{a3}')
    print(f'第四个索引{a4}')
    print(f'第五个索引{a5}')

elif f==6:
    number.pop(d)
    d1 = number.index(b)
    a2 = int(d1) + 2
    number.pop(d1)
    d2 = number.index(b)
    a3 = int(d2) + 3
    number.pop(d2)
    d3 = number.index(b)
    a4 = int(d3) + 4
    number.pop(d3)
    d4 = number.index(b)
    a5 = int(d4) + 5
    number.pop(d4)
    d5 = number.index(b)
    a6 = int(d5) + 6
    print(f'第一个索引{d}')
    print(f'第二个索引{a2}')
    print(f'第三个索引{a3}')
    print(f'第四个索引{a4}')
    print(f'第五个索引{a5}')
    print(f'第六个索引{a6}')

elif f==7:
    number.pop(d)
    d1 = number.index(b)
    a2 = int(d1)+2
    number.pop(d1)
    d2 = number.index(b)
    a3 = int(d2)+3
    number.pop(d2)
    d3 = number.index(b)
    a4 = int(d3)+4
    number.pop(d3)
    d4 = number.index(b)
    a5 = int(d4)+5
    number.pop(d4)
    d5 = number.index(b)
    a6 = int(d5)+6
    number.pop(d5)
    d6 = number.index(b)
    a7 = int(d6)+7
    print(f'第一个索引{d}')
    print(f'第二个索引{a2}')
    print(f'第三个索引{a3}')
    print(f'第四个索引{a4}')
    print(f'第五个索引{a5}')
    print(f'第六个索引{a6}')
    print(f'第七个索引{a7}')
elif f==8:
    number.pop(d)
    d1 = number.index(b)
    a2 = int(d1)+2
    number.pop(d1)
    d2 = number.index(b)
    a3 = int(d2)+3
    number.pop(d2)
    d3 = number.index(b)
    a4 = int(d3)+4
    number.pop(d3)
    d4 = number.index(b)
    a5 = int(d4)+5
    number.pop(d4)
    d5 = number.index(b)
    a6 = int(d5)+6
    number.pop(d5)
    d6 = number.index(b)
    a7 = int(d6)+7
    number.pop(d6)
    d7 = number.index(b)
    a8 = int(d7) + 7
    print(f'第一个索引{d}')
    print(f'第二个索引{a2}')
    print(f'第三个索引{a3}')
    print(f'第四个索引{a4}')
    print(f'第五个索引{a5}')
    print(f'第六个索引{a6}')
    print(f'第七个索引{a7}')
    print(f'第八个索引{a8}')
elif f==9:
    number.pop(d)
    d1 = number.index(b)
    a2 = int(d1)+2
    number.pop(d1)
    d2 = number.index(b)
    a3 = int(d2)+3
    number.pop(d2)
    d3 = number.index(b)
    a4 = int(d3)+4
    number.pop(d3)
    d4 = number.index(b)
    a5 = int(d4)+5
    number.pop(d4)
    d5 = number.index(b)
    a6 = int(d5)+6
    number.pop(d5)
    d6 = number.index(b)
    a7 = int(d6)+7
    number.pop(d6)
    d7 = number.index(b)
    a8 = int(d7) + 8
    number.pop(d7)
    d8 = number.index(b)
    a9 = int(d8) + 9
    print(f'第一个索引{d}')
    print(f'第二个索引{a2}')
    print(f'第三个索引{a3}')
    print(f'第四个索引{a4}')
    print(f'第五个索引{a5}')
    print(f'第六个索引{a6}')
    print(f'第七个索引{a7}')
    print(f'第八个索引{a8}')
    print(f'第九个索引{a9}')
else:
    print(f'索引：{d}')
