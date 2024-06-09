import commentjson

# filePath = r'D:\Code\Python\ChangeCursorColor\test.json'
# filePath = r'D:\Code\Python\ChangeCursorColor\shit.json'
filePath = 'C:/Users/86150/AppData/Roaming/Code/User/settings.json'
# 检查 JSON 文件
nothing = commentjson.load(open(filePath, encoding='utf8'))
print("未发现格式错误")
# 颜色主题和颜色值的映射关系
color_mapping = {
    "Moonlight II Italic": "#82aaff",
    "Solarized Dark": "#D30102"
}

# 读取 settings.json 文件
with open(filePath, 'r', encoding='utf8') as file:
    settings = file.readlines()

# 查找 "workbench.colorTheme" 的值并确定对应的颜色值
isFindTheme = False
for line in settings:
    # if (line.startswith('{')) or (line.startswith('}')):
    if line.startswith('{'):
        continue
    line = line.strip()
    if line.startswith('/'):
        continue
    if (line.startswith('[')) or (line.startswith(']')):
        continue
    if line.startswith('}'):
        continue
    if 'workbench.colorTheme' in line:
        theme_line = line
        try:
            theme = theme_line.split(':')[1].split(',')[0].strip().strip('"')
        except IndexError:
            continue
        else:
            # 根据颜色主题查找对应的颜色值
            color = color_mapping[theme]
            isFindTheme = True
            break

if (isFindTheme == False):
    print(f'无法在文件{filePath}找到"workbench.colorTheme"配置, 可能是已启用默认暗色主题; 或是该配置已被注释掉')
    theme = 'Visual studio dark'
    color = '#AEAFAD'  # TODO  默认主题的光标颜色

print(f"当前使用的主题: {theme}")
print(f"对应的光标颜色: {color}")

# 修改 "animations.CursorAnimationOptions" 中的 "Color" 值
isFindCursor = False
# CursorAnimationOptions = f'\t"animations.CursorAnimationOptions": {{"Color": "{color}"}},\n'
# CursorAnimationOptions = f'\t"animations.CursorAnimationOptions": {{\n\t\t"Color": "{color}"\n\t}},\n'
# CursorAnimationOptions = f'\t\t"Color": "{color}"\n'
for i, line in enumerate(settings):
    if 'animations.CursorAnimationOptions' in line:
        if line.strip().startswith('/'):
            continue
        isFindCursor = True
        while 1:
            i += 1
            line = settings[i].strip()
            if (line.startswith('/')):
                continue
            if ('Color' in line):
                settings[i] = f'\t\t"Color": "{color}",\n'
                print("Color修改成功!")
                break
            else:
                if (settings[i + 1].strip().startswith('}')) or (settings[i].strip().startswith('}')):
                    settings.insert(i, f'\t\t"Color": "{color}",\n')
                    print("已插入Color!")
                    break
        break

# settings.json中不存在 animations.CursorAnimationOptions
if isFindCursor == False:
    print('未找到animations.CursorAnimationOptions或已被注释掉')
    settings.insert(
        1, f'\t"animations.CursorAnimationOptions": {{\n\t\t"Color": "{color}"\n\t}},\n')
    print('已在文件第二行插入"animations.CursorAnimationOptions"')

# 写入更新后的 settings.json 文件
with open(filePath, 'w', encoding='utf8') as file:
    file.writelines(settings)
    print("文件写入成功")

# import json
# import concurrent.futures

# color_mapping = {
#     "Moonlight II Italic": "#81A9FE",
#     "Solarized Dark": "#D30102"
# }

# def read_settings(file_name):
#     with open(file_name, 'r') as file:
#         return file.readlines()

# def write_settings(file_name, settings):
#     with open(file_name, 'w') as file:
#         file.writelines(settings)

# # 读取 settings.json 文件
# with concurrent.futures.ThreadPoolExecutor() as executor:
#     settings = executor.submit(read_settings, 'D:/Code/Python/shit.json').result()

# # 获取颜色主题并确定对应的颜色值
# color_theme_line = next(line for line in settings if '"workbench.colorTheme"' in line)
# color_theme = color_theme_line.split(':')[1].strip().strip('"')

# # 查找 "animations.CursorAnimationOptions" 并修改 "Color" 值
# for i, line in enumerate(settings):
#     if '"animations.CursorAnimationOptions"' in line:
#         start_index = i + 1
#     elif start_index and start_index == i:
#         if '"Color"' in line:
#             settings[i] = f'        "Color": "{color_mapping.get(color_theme, "")}"\n'

# # 写入更新后的 settings.json 文件
# with concurrent.futures.ThreadPoolExecutor() as executor:
#     executor.submit(write_settings, 'D:/Code/Python/shit.json', settings)
# import json

# dic = {"Moonlight II Italic": "#81A9FE", "Solarized Dark": "#D30102"}
# # file_path = 'C:/Users/86150/AppData/Roaming/Code/User/settings.json'
# file_path = 'D:\Code\Python\shit.json'

# # 读取 settings.json 文件
# with open(file_path, 'r', encoding="utf-8") as file:
#     settings = json.load(file)

# current_theme = settings["workbench.colorTheme"]  # 获取当前主题
# cursor_color = dic[current_theme]  # 根据当前主题获取相应的鼠标颜色

# # 添加 animations.CursorAnimationOptions 到 settings.json 文件
# settings["animations.CursorAnimationOptions"] = {"Color": cursor_color}

# # 将更新后的内容写入 settings.json 文件
# with open(file_path, 'w') as file:
#     json.dump(settings, file, indent=4)
