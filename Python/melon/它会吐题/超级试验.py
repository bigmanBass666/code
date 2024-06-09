import random as r
# import time
import horse_home_sharp.专升本思政题 as t

def summary():
    print(f'正确：{TrueCount}道\n错误：{FalseCount}道\n正确率：{TrueCount / denominator:.2%}', sep='\n')
    print('𝙋𝙧𝙤𝙙𝙪𝙘𝙩 𝙤𝙛 𝙢𝙚𝙡𝙤𝙣.'.center(145))

def fuck_you():
    print('\n系统:', r.choice(['?', '6', '吊', '鸡唛?', '凉瓜铺?', '??', 'fuck you', '故意?']))

def print_analysis():
    print('解析：', analysis[index], sep='')

print('𝙋𝙧𝙤𝙙𝙪𝙘𝙩 𝙤𝙛 𝙢𝙚𝙡𝙤𝙣.'.center(143))
print('✿ 通用关键字：“退出”，“exit”。')
print('✿ 练习模式关键输入：空格，回车。')
print('✿ 练习模式中，唯有将题目全部做对或是输入指令才能退出。')
print('✿ 练习模式功能繁多，推荐选择详细的提示语')
warning = ' "提示语“ 选 "详细"'*9
print('✿ ' + warning.lstrip())
print('✿ 直到熟悉每道题回答完后的提示语，方可选择简化甚至是无提示语的模式')
print('✿ tip:设置练习模式的初衷在于令其辅助使用者背诵内容，而非刷题。\n')
input('确认浏览（于此处回车）：\n')

question = list(t.problem.values())
key = t.num
analysis = t.knowledge

count = [0] * len(question)
mistake = [0] * len(question)
TrueCount = 0

A = "\nPress Enter to see the answer or continue typing your answer." \
    "\n回 车 以 查 看 答 案 或 继 续 输 入 答 案。"
B = "\nPress Enter to see the next question or continue answering the question." \
    "\n回 车 以 查 看 下 一 道 题 或 继 续 回 答 本 题。"
C = "\nEnter a space to clear the error record and answer the question again." \
    "\n输 入 空 格 以 清 除 错 题 记 录 并 重 新 回 答 本 题。\n答："
D = "\n✿ "

while 1:
    StudyWay = input('学习模式：\nA.测试模式\nB.练习模式\n选择：').upper()

    if StudyWay == 'A':
        print('测试模式'.center(148, '—'))
        break

    elif StudyWay == 'B':
        print('练习模式'.center(148, '—'))
        break

    else:
        fuck_you()
        print('')
        continue

if StudyWay == 'B':

    while 1:
        TipWay = input('提示语形式:\nA.详细\nB.简约\nD.极简\n选择：').upper()

        if TipWay == 'A':
            tip1 = A + C
            tip2 = B + C
            print('详细提示语'.center(148, '—'))
            break

        elif TipWay == 'B':
            tip1 = tip2 = D
            print('简约提示语')
            break

        elif TipWay == 'D':
            tip1 = tip2 = ''
            print('无提示语')
            break

        else:
            fuck_you()
            print('')
            continue

if StudyWay == 'A':
    a = 0

    while 1:
        confirmation = input('回车以确认答题：')

        if confirmation == '':
            print('开始答题'.center(148, '—'))
            break

        else:
            a += 1
            if a == 1: print('\n系统：不答？')
            if a != 1: fuck_you()
            continue

else:
    print('开始答题'.center(148, '—'))

while 1:
    cleared = 0
    FalseCount = mistake.count("✿")
    denominator = TrueCount + FalseCount

    if TrueCount == 0 and FalseCount == 0: denominator = 1

    if 0 not in count:
        print('已答完')
        summary()
        break

    s = r.choice(question)
    index = question.index(s)

    if count[index] == '✿':
        continue

    print(s)
    count[index] = '✿'
    answer = input("答：").upper()

    if answer == '退出' or answer == "exit" or answer == "EXIT":
        print('答案:', key[index])
        print_analysis()
        print("\n已退出")
        summary()
        break

    elif answer == key[index]:
        print('正确')
        print_analysis()  #
        print('')

        if mistake[index] == "✿":
            continue

        TrueCount += 1

    else:
        mistake[index] = '✿'

        if StudyWay == 'B': count[index] = 0  # 练习模式下执行，测试模式下则无。

        print('错误')

        if StudyWay == 'A':
            print('正确答案：', key[index], sep='')
            print_analysis()  #
            print('')
            continue

        s1 = '✿'

        while 1:

            if s1 == '✿':
                s1 = input(tip1)

            if s1.isspace():
                print('\n已清除错题记录')
                print(A)

            print('', s, sep='\n')

            if s1 == key[index]:
                print('答案：', s1, sep='')
                print('正确\n')
                print_analysis()  #
                count[index] += 1
                break

            elif s1 == '':
                print('答案:', key[index])
                print_analysis()  #
                s2 = input(tip2).upper()

                if s2 == '':
                    print('')
                    break

                else:
                    s1 = s2

            elif s1.isspace():

                if cleared == 1:
                    mistake[index] = '✿'
                    print('答：', s1, sep='')
                    print("错误")
                    s3 = input(tip1).upper()
                    s1 = s3

                mistake[index] = 0
                cleared = 1
                s1 = input('答：').upper()

            elif s1 == '退出' or s1 == "exit" or s1 == "EXIT":
                print('答案:', key[index])
                print_analysis()
                break

            else:
                print('答：', s1, sep='')
                print("错误")
                s4 = input(tip1).upper()
                s1 = s4

        if s1 == '退出' or s1 == "exit" or s1 == "EXIT":
            print("\n已退出")
            summary()
            break