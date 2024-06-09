import random
import tkinter as tk
import threading
import time

Root_Str = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
lis = random.sample(Root_Str,4)  # 4，是确定随机生成个数
Verification_Code = "".join(lis)  # 把sample生成列表的括号去掉

# 搞个窗口放随机生成的验证码
def boom():
    window = tk.Tk()
    a = random.randrange(100, 120)
    b = random.randrange(100, 120)
    window.geometry("220x80" + "+" + str(a) + "+" + str(b))
    tk.Label(window, text=j, bg='pink',
             font=('宋体', 12), width=22,
             height=5).pack()
    window.mainloop()


threads = []
for i in range(1):
    t = threading.Thread(target=boom)
    threads.append(t)
    time.sleep(0)
    threads[i].start()

q = input("请输入验证码：")
g = len(q)  # 限制输入的验证码长度

# 全tm转换成小写
l = q.lower()
d = j.lower()

print("验证成功~") if l == d and g == 4 else print("验证码错误,请刷新再试一次")
