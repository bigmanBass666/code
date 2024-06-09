for i in range(1000,10000):
    s = str(i)
    a = int(s[0])
    b = int(s[1])
    c = int(s[2])
    d = int(s[3])
    if d % 2 == 1 and c + d == 5 and i % 3 == 0 and a == b:
        print(i)