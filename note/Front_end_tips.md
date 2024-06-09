# Javascript

## jQuery

1. 关于导航栏悬浮显示对应菜单列表的链式编程

```javascript
$("#content div").eq(index).show().siblings().hide(); // 不可颠倒位置, 先show再hide
```

> 2023 November 8 Wednesday 00:20
> 2023 November 8 Wednesday 16:50

## common

1. 轮播图 清除上一个 active 圆点

```javascript
document.querySelector(".active").classList.remove("active");
// document.querySelector(".active") 为当前选中的圆点
```

> 2023 October 21 Saturday 22:29

2. 将同意协议 checkbox 与 button 建立关联的妙解

```javascript
agree.addEventListener("click", function () {
  registerBtn.disabled = !this.checked; // !!!
});
```

> 2023 October 21 Saturday 22:26

3. 使用`:not()`伪类选择器，选择不含某某条件的元素

```css
input[type="checkbox"]: not(: checked) // 获取没有选中的复选框;;
```

> 2023 October 22 Sunday 16:27

4. disabled 属性: 切记不可漏写最后一个字母 d

```javascript
reduce.disabled = true;
```

> 2023 October 26 Thursday 22:38

## console

1. console.time('此次计时的名字'); console.timeEnd('此次计时的名字')

```javascript
console.time("此次计时的名字");
// code
console.timeEnd("此次计时的名字");
```

2. 计数 `console.count('loop')`;

```javascript
const start = Date.now();
while (Date.now() - start < 20) {
  console.count("loop");
  console.countReset("loop"); // 对计数清零
}
```

3. 断言

```javascript
function sum(a, b) {
  return a + b;
  console.assert(sum(1, 2) === 3); // 函数返回false时报错
}
```

4. `console.dir(Element)` 想要查看标签元素属性信息时，其可清晰打印出对象的属性信息。
   重点关注 tagName

```javascript
console.dir(document.querySelector("li"));
```

> 2023 October 22 Sunday 17:06

5. 谨记表单元素的 value 值是 string, 要记得 +

> 2023 October 26 Thursday 22:57

# CSS

1. 类选择器与空格

```css
ul .active {
  /* ul 中的 active 类 */
  color: red;
}

ul li.active {
  /* ul 中属于 active 类的 li 标签 */
  color: red;
}
```

> 2023 October 22 Sunday 17:28

2. 转换为大写

```css
text-transform: uppercase;
```

> 2023 October 28 Saturday 23:44

3. 表单选中色

```css
caret-color: #b4edc0;
```

> 2023 November 8 Wednesday 00:21

4. 文字不可被选中

```css
user-select: none;
```

> 2023 November 8 Wednesday 00:22

5. 表格 table 边框不重复 collapse

```css
border-collapse: collapse;
```

> 2023 November 8 Wednesday 00:23

6. 按钮 荧光

```css
.btn {
  position: relative;
}

.btn:hover::after {
  content: "";

  position: absolute;

  left: -1px;
  right: -1px;
  top: -1px;
  bottom: -1px;
  z-index: -1;

  background-color: inherit;
  filter: blur(30px);
}
```

# HTML

1. 设置 svg 图标颜色为当前字体颜色

```html
fill="currentColor"
```
