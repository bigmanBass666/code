import random

def 我赢():
    global num
    if (s.get(a1)==3 and a==2) or (s.get(a1)==2 and a==1) or (s.get(a1)==1 and a==3):
        num += 1
        print(f"{'*' * 10}你赢了{'*' * 10}")

def 电脑赢():
    global nums
    if (s.get(a1) == 2 and a == 3) or (s.get(a1) == 1 and a == 2) or (s.get(a1) == 3 and a == 1):
        nums += 1
        print(f"{'*' * 10}你输了{'*' * 10}")

def 结果():
    """𝙋𝙧𝙤𝙙𝙪𝙘𝙩 𝙤𝙛 𝙢𝙚𝙡𝙤𝙣."""
    if num == 3:
        print(f'五局三胜 你赢了！！！')
        return True
    elif nums == 3:
        print(f'五局三胜 电脑赢了！！！')
        return True

s2 = {1:"剪刀",2:"石头",3:"布"}
s = {"剪刀":1,"石头":2,"布":3}
num = 0
nums = 0

while True:
    if 结果(): break
    else:
        print()
        a = random.randint(1, 3)
        a1 = input("输入剪刀、石头、布\n我--出-:") #我方
        print('电脑--出-', s2.get(a))
        我赢()
        电脑赢()
        if s.get(a1) == a:
            print(f"{'*'*10}平局{'*'*10}")
        else:
            print("输入错误！")
        print(f"你赢了{num}次\n电脑赢了{nums}次")

print("游戏结束~")

help(结果)










