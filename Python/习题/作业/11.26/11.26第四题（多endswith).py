s = input()
if s.endswith('.img') or s.endswith('.jpg') or s.endswith('.gif') or s.endswith('.png'):
    print("是一张图片格式的图片")
else:
    print("你上传的文件格式异常")
