from random import randint as r
p = r(0,1000000)
print(f"利润:{p}元")
input("回车以运行")
if p <= 100000:
    bonus = p*0.1                                                           #𝓶𝓮𝓵𝓸𝓷.
elif 100000 < p <= 200000:                                                  
    bonus = 10000 + (p - 100000)*0.075
elif 200000 < p <= 400000:
    bonus = 17500 + (p - 200000)*0.05
elif 400000 < p <= 600000:
    bonus = 27500 + (p - 400000)*0.03
elif 600000 < p <= 1000000:
    bonus = 33500 + (p - 600000)*0.015
elif p > 1000000:
    bonus = 35000 + (p - 1000000)*0.01
print("奖金:%d元"%(bonus))