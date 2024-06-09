a = 1
while a <= 9:
    b = 1       #相当之重要的" 刷新 "
    while b <= a:
        print(f"{b}*{a}={a*b}",end="\t")
        b += 1
    print()
    a += 1     #计数器