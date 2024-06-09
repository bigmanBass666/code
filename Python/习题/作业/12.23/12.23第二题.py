# 作业2：需求：批量修改文件名，既可添加指定字符串，又能删除指定字符串。
# ① 设置添加删除字符串的的标识
# ② 获取指定目录的所有文件
# ③ 将原有文件名添加/删除指定字符串，构造新名字
# ④ os.rename()重命名

import os                                                   #𝓶𝓮𝓵𝓸𝓷.
# 标识
sign = input('指定字符串：')
# 获取
dir = input('文件夹路径：')
os.chdir(dir)
dir_list = os.listdir()
print(dir_list)
# 新名 重命名
mode = input('删除 or 添加：')
for old_name in dir_list:
    if mode == '添加':
        new_name = old_name + sign
        os.rename(old_name,new_name)
    else:
        new_name = old_name.replace(sign,'')
        os.rename(old_name,new_name)
print(os.listdir(dir))