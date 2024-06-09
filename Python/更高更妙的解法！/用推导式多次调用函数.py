def f():
    return 1 or 2 or 3


a = [f() for i in range(5)]

print(a)

# [1, 1, 1, 1, 1]