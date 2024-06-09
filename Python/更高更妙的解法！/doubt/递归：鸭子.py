def duck(n):
    if n==7:
        return 2
    else:
        tmp=(duck(n+1)+1)*2
        return tmp
#n1是过了第一个村剩余的鸭子数，init是最初的鸭子数，保存是为了下次使用不用再求一次值   
n1=duck(1)
init=(n1+1)*2
print("最开始有%d只鸭子"%init)
#上一村剩余的鸭子数
last=init
for i in range(1,8):
        #这一村剩余的鸭子数
        this=duck(i)
        print("在第%d个村子，卖出%d只鸭子"%(i,last-this))
        last=this
