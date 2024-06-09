s = input()
list1 = ['.bmp','.jpg','.png','gif']
list2 = ['.exif','.webp','.avif']
section = s[-4:]
if section in list1 or section in list2:
    print("是一张图片格式的图片")
else:
    print("你上传的文件格式异常")