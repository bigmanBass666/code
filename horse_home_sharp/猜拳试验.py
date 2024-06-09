import random as r

def result():
    print(f"电脑：{ComputerWin}\n你：{MyselfWin}\n平局：{draw}\n")

shit = ['石头', '剪刀', '布']
ComputerWin = 0
MyselfWin = 0
draw = 0

print('Scissors, rock or paper.'.center(140))
print('剪刀、石头或布。'.center(134))

while 1:

    if (MyselfWin == 3) or (ComputerWin == 3) or (draw + MyselfWin + ComputerWin == 5):
        print('赢') if MyselfWin > ComputerWin else print('输')
        print('𝙋𝙧𝙤𝙙𝙪𝙘𝙩 𝙤𝙛 𝙢𝙚𝙡𝙤𝙣.'.center(145))
        break

    computer = r.choice(shit)
    myself = input("出拳：")

    if ('石头' == computer and myself == '布') or (computer == '剪刀' and myself == '石头') \
            or (computer == '布' and myself == '剪刀'):
        print('赢')
        MyselfWin += 1
        result()

    elif ('石头' == myself and computer == '布') or (myself == '剪刀' and computer == '石头') \
            or (myself == '布' and computer == '剪刀'):
        print('输')
        ComputerWin += 1
        result()

    elif computer == myself:
        draw += 1
        print("平局")
        result()
        continue

    else:
        print('\n不想玩别玩\n')
        continue




