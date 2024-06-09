i = int(input("正整数:"))
print(i,end=" ")
while 1:
    if i == 1:
        break
    elif i % 2 == 1:
        i = (i*3)+1
        print(int(i),end=" ")
    else:
        i = i/2
        print(int(i),end=" ")