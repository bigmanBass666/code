def func():
    data = 2*2
    return data


data_list = [func,func,func]
for item in data_list:
    v = item()
    print(v)

# 函数名实际上是一个变量，可更改。