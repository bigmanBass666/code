from tkinter import *
import random as r

# Verification_Code = ''
#
Root_Str = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"

lis = r.sample(Root_Str,4)  # 4，是确定随机生成个数
Verification_Code = "".join(lis)  # 把sample生成列表的括号去掉

def melon():
     s = inp.get()
     if s == Verification_Code:
          answer = "正确"   # 追加显示运算结果
     else:
          answer = "错误"

     lb2 = Label(window, text='')
     lb2.configure(text=answer)
     lb2.place(relx=0.1, rely=0.6, relwidth=0.8, relheight=0.1)

window = Tk()
window.geometry('460x240')
window.title('𝓶𝓮𝓵𝓸𝓷.')

var=StringVar()
var.set(Verification_Code)

inp = Entry(window)
inp.place(relx=0.35, rely=0.2, relwidth=0.3, relheight=0.1)

lb1 = Label(window, textvariable=var)
lb1.place(relx=0.1, rely=0.1, relwidth=0.8, relheight=0.1)

# 方法-直接调用 melon()
btn = Button(window, text='确定', command=melon)
btn.place(relx=0.35, rely=0.4, relwidth=0.3, relheight=0.1)

     # if inp.get() == "break":
     #      break

window.mainloop()

