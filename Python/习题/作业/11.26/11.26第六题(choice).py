# 练习题6：给定一个字符串，如：
# mystr = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
# 使用所学的知识，从字符串中随机取出4个字符，生成验证码。

mystr = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
import random as r
s = ""
for i in range(4):
    c = r.choice(mystr)
    s += c
print(s)