def shit(fuck):
    if type(fuck) == dict:
        max = 0                 #论初始最大值的影响有多大
        for i in fuck:
            if max < fuck[i]:
                max = fuck[i]
    else:
        max = fuck[0]           #神来之笔
        for i in fuck:
            if max < i:
                max = i
    return max


a = [-7, -12, -1, -9]  #  结果: -1  
b = 'abcdpzasdz'   # 结果: 'z'  
c = {'小明':90, '张三': 76, '路飞':30, '小花': 98}  # 结果: 98
print(shit(a))
print(shit(b))
print(shit(c))

# def max(list1):
#     if type(list1) == dict:
#         max_num = 0
#         for x in list1:
#             if max_num < list1[x]:
#                 max_num = list1[x]
#     else:
#         max_num = list1[0]
#         for x in list1:
#             if max_num < x:
#                 max_num = x
#     return max_num


# param1 = {'小明':90, '张三': 76, '路飞':30, '小花': 98}
# print(max(param1))
