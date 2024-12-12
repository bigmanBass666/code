def f(n):
    if n == 5:  # 如果 “递归退出条件” 成立，推出递归，并返回值。
        return 1
    return (f(n+1)+1) * 2  # 否则，持续调用自身。

n = 1
print(f(n))