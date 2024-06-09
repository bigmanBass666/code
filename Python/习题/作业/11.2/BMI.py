height = float(input("身高（米）:"))
weight = float(input("体重（千克）:"))
BMI = weight/(height**2)
print("BMI:{:.2f}".format(BMI))
if BMI < 18:
    dummy = "超轻"                                                  #𝓶𝓮𝓵𝓸𝓷
elif 18 <= BMI < 25:
    dummy = "标准"
elif 25 <= BMI < 25:
    dummy = "超重"
else:
    dummy = "肥胖"
print("解释:",dummy)
