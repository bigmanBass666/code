import time


# 求最大
def get_max(box):
    max = box[0]
    for i in range(len(box)):
        if max < box[i]:
            max = box[i]
    return max


# 求最小
def get_min(box):
    min = box[0]
    for i in range(len(box)):
        if min > box[i]:
            min = box[i]
    return min


# 求总分
def get_count(box):
    count = 0
    for i in range(len(box)):
        count += box[i]
    return count


# 求平均分
def get_avg(box):
    avg = get_count(box)
    x = (avg * 1.00) / (len(box))
    return x


# 求低于平均分
def get_nums(box):
    num = get_avg(box)
    x = 0
    for i in range(len(box)):
        if box[i] < num:
            x += 1
    return x


# 获取分数
def methon_input():
    score = []  # 返回正确的数据
    count = 0
    while count < 1:
        temp = []  # 临时存储并验证数据是否为0-100
        data = input("请输入所有分数\n并用空格隔开！！\n格式：90 100 98 99\n:")
        box_2 = data.split(" ")
        for x in box_2:
            temp.append(int(x))
        for i in range(len(temp)):
            if temp[i] >= 0 and temp[i] <= 100:  # 验证传入数据
                score.append(temp[i])
            else:
                print("\n您的输入有误请检查成绩是否为0-100之间")
                count = count - 1  # 如果输入错误重新输入
                break  # 如果没有break,如果列表内有多个输入错误,num就变成负数 然后循环多几次
        count += 1
    return score

if __name__ == '__main__':
    scores = methon_input()
    print(f'最高分为：{get_max(scores)}')
    print(f'总共{len(scores)}科')
    print(f'最低分为：{get_min(scores)}')
    print(f'总分为：{get_count(scores)}')
    print(f'平均分为：{get_avg(scores)}')
    print(f'低于平均分个数为：{get_nums(scores)}')
    time.sleep(5)
