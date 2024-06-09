'''
作业1：案例：准备一个static文件夹以及file1.txt、file2.txt、file3.txt三个文件
① 在程序中，将当前目录切换到static文件夹
② 创建一个新images文件夹以及test文件夹
③ 获取目录下的所有文件
④ 移除test文件夹
'''

import os          #𝓶𝓮𝓵𝓸𝓷.

# 切换                                                                                 
os.chdir('static')                                                              
# 创建
os.mkdir('images')
os.mkdir('test')
# 获取
os.listdir()
# 移除
os.rmdir('test')