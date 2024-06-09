from random import choice as c
state = c(['绿灯','红灯','黄灯'])
print("状态:",state)
input("回车以运行")
if state == "绿灯":
    print("正常通行")
elif state == "红灯":
    print("停车等待")
else: 
    state == "黄灯"
    print("观察并慢行")