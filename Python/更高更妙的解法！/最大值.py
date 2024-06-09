def n_max(nums):
    max_num = 0
    for x in nums:
        if max_num < x:
            max_num = x
    return max_num

#若需求非数字的最大值，则：
def max(s):
    max = s[0]      #令初始最大值等于所处理参数中的首个参数
    for x in s:
        if max < x:
            max = x
    return max