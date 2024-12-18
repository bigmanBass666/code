# 一、每日作业-JavaScript 第 02 天

## 主观题

### 核心知识点

1. 打印 0-20 之间的整数, 将每个数输出到控制台

2. 计算 1-1000 之间的累加和，并且打印输出到页面中

3. 页面依次打印 100-200 之间,可以被 6 整除的数字

4. 用户弹窗输入两个数字，页面输出两个数字中的最大值（请使用三元运算符完成）

5. **用户输入一个数， 计算 1 到这个数的累加和**

   - 比如 用户输入的是 5， 则计算 1~5 之间的累加和
   - 比如用户输入的是 10， 则计算 1~10 之间的累加和

6. **输出成绩案例（请使用 if 多分支来书写程序）**

   题目描述：

   接收用户输入的分数，根据分数输出对应的等级字母 A、B、C、D、E，

   - 90 分(含)以上 ，输出：A
     80 分(含)~ 90 分(不含)，输出：B
     70 分(含)~ 80 分(不含)，输出：C
     60 分(含)~ 70 分(不含)，输出：D
   - 60 分(不含) 以下，输出 E

7. **输出星期练习（请使用 switch 分支语句来书写程序）**

   题目描述：

   请用户输入 1 个星期数. 就将对应的英文的星期打印出来.

   - 比如用户输入'星期一'， 则 页面可以打印 monday
   - 英文自己查有道。比如星期一是 monday 星期二是 tuesday

8. **用户登录验证**

   题目描述：

   接收用户输入的用户名和密码，若用户名为 “admin” ,且密码为 “123456” ,则提示用户登录成功! 否则，让用户一直输入。

   ​

### 综合案例变形

需求：根据用户选择计算两个数的结果：

**题目描述：**

打开页面出现一个提示框，注意是一直提示的，'请您选择 + - \* / ，如果输入 q，则是退出结束程序

- 如果输入的是 + - _ / 其中任何一个，比如用户输入是 + ，则是计算求和，如果用户输入是 _ 则是计算乘积
  - 则提示第一个弹窗，提示用户：'请您输入第一个数字'
  - 输入完毕则继续提示第二个弹窗，提示用户：'请您输入第二个数字'
  - 都输入完毕，则通过警示框 alert 输出结果
- 如果输入是 q，则结束程序

提示：多分支请使用 if 多分支来完成

具体效果如图：

 <img src="assets/111.gif">

​

## 排错题

### 排错题 1

```javascript
<!-- 请问以下代码会出现什么问题，如何解决？ -->
<script>
  // 需求： 求用户输入2个数字的和
  let num1 = prompt('请输入第一个值')
  let num2 = prompt('请输入第二个值')
  alert(num1 + num2)
</script>
```

没有将用户的输入转换成 number 类型 (+prompt)

### 排错题 2

```javascript
<!-- 请问下面代码会出现什么问题，怎么去解决？ -->
<script>
  // 判断用户名的案例，用户会输入用户名
  // 1. 如果用户名输入'迪丽热巴'，则页面弹出 '用户名输入正确'
  // 2. 如果用户名输入不是'迪丽热巴'，否则弹出'用户名输入不正确'

  let username = prompt('请输入用户名:')
  if (username = '迪丽热巴') {
    alert('用户名输入正确')
  } else {
    alert('用户名输入不正确')
  }
</script>
```

if (username = '迪丽热巴') {这一行出错：此处应用全等===而不是赋值运算符=

### 排错题 3

```html
<body>
  <!-- 请问以下代码会出什么问题？如何解决？ -->
  <script>
    // 需求，用户输入1~10之间的整数，则循环打印用户输入的次数
    // 注意此处有2个错误，找出并且修正

    let num = prompt("请输入一个1~10之间的整数");
    let i = 1;
    while (i < num) {
      console.log(`我是第${i}句话`);
    }
  </script>
</body>
```
let num = prompt('请输入一个1~10之间的整数') 需进行类型转换：+prompt()
while (i < num) { 应为<=

### 排错题 4

```html
<body>
  <!-- bug:请你找到下面代码代码穿透的原因,并找到匹配不上case里面的值的问题进行修改 -->

  <script>
    // 需求： 用户输入1~4之间整数，对应输出 '春' '夏' '秋' '冬'
    // 例如用户输入 1 则输出 '春' ，用户输入 2，则输出 '夏' 以此类推
    // 注意： 此处有2个错误，找出并且修正
    let num = +prompt("请你输入一个1-4之间的值");
    switch (num) {
      case "1":
        alert("春");
      case "2":
        alert("夏");
      case "3":
        alert("秋");
      case "4":
        alert("冬");
      default:
        alert("请输入1~4之间整数");
        break;
    }
  </script>
</body>
```
case 的值不应该为string类型, 应为整数
穿透是因为没有加break

## 客观题

地址：https://ks.wjx.top/vm/tjmrvAg.aspx#

请扫码做题

![67263889554](assets/1672638895542.png)

## 简答题：关键字汇总( 能够简单的说出来这些关键字干啥用的 )

- let 声明变量
- typeof 检测数据类型
- if 条件语句如果
- else 否则
- switch 分支语句
- case 选项
- default 默认语句
- while
- break 退出循环
- continue 继续下一次循环

## 关注 pink 老师

关于 pink 老师抖音（黑马 pink 讲前端），领取学习路线图、面试宝典以及八大学科的基础视频哦~~

![67263896570](assets/1672638965706.png)
