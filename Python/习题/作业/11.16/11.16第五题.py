username = "admin"
password = "admin888"
for i in range(3):
    u = input("username:")
    p = input("password:")
    if u == username:
        if p == password:
            print("True")
            break
        else:
            print("密码错误")
            continue
    else:
        print("用户名错误")
        continue
