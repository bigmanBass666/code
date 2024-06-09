import commentjson

path = r"D:\Code\Python\ChangeCursorColor\shit.json"

# 从文件中加载 JSON（包括注释）
data = commentjson.load(open(path))

# 将数据转换为 JSON 字符串（包括注释）
json_string = commentjson.dumps(data)
print(json_string)
# 解析 JSON 字符串（忽略注释）
parsed_data = commentjson.loads(json_string)

# 将 JSON 数据（包括注释）写入文件
with open(path, 'w') as file:
    commentjson.dump(data, file)
