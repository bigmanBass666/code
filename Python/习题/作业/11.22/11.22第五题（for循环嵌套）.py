for a in range(10):
    for b in range(10):
        for c in range(10):
            for d in range(10):
                if d % 2 == 1 and c + d == 5 and (a + b + c + d) % 3 == 0 and a == b:
                    print(a,b,c,d,sep="")
            