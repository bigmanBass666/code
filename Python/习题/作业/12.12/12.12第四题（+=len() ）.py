s = input('句子：')
WordCount = len(s.split())
print(f"单词数量；{WordCount}")

LetterCount = 0
for i in s.split():
    LetterCount += len(i)

print(f"单词平均长度：{LetterCount // WordCount}")