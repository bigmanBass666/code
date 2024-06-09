from random import randint as r
a = r(1,10)
for x in range(3):
    i = eval(input())
    if i > a:
        print("too big")
    elif i < a:
        print("too small")
    else:
        print("恭喜")
        break