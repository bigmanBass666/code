def f(s):
    if len(s) < 2:
        print(s)
        return True
    elif s[0] != s[-1]:  # 妙处：正难则反
        return False
    else:
        print(s)
        return f(s[1:-1])  # 加深印象：右开


s = 'abcdefgfedcba'
print(f(s))