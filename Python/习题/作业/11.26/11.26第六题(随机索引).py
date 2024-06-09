# 练习题6：给定一个字符串，如：
# mystr = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
# 使用所学的知识，从字符串中随机取出4个字符，生成验证码。

import random as r

mystr = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
s1 = ""
for i in range(4):
    s2 = r.randint(0,len(mystr))
    s1 += mystr[s2]
print(s1)