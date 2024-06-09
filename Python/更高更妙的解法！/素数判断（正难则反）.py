def f(n):
    if n == 2:
        return True
    for i in range(2,int(n ** 0.5)):
        if n % i == 0:
            return False
    return True

# 大于一的整数，只能被一和自身整除的整数

# 关于开根号：

# “关键是对于较大测试样例数据超时问题的应对，需要用到循环仅仅到原数的开平方即可。”

# “开根号那个回文数可以减小复杂度，也同时能够反应整体情况”