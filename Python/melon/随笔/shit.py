def f(n):  # 判断质数
    if n < 2:
        return False
    if n == 2:
        return True
    for i in range(2,n+1):
        if n % i:
            return False
    return True


s = input()
word = {i:s.count(i) for i in s}
print('word:',word)

values = list(word.values)
print('value:',values)

max = max(word.values)
min = min(word.values)
print('max:',max,'min:',min)

num = word[max] - word[min]
print('num:',num)

if f(num):  # 如果差为质数
    print('Lucky Word')
    print(num)
else:
    print('No Answer')
    print(0)