alert('当前所使用的浏览器版本过低，可能会导致表格边框渲染不完整')

// 表单页
const box = document.querySelector('.box')
const formBox = document.querySelector('.formBox')
const tableBox = document.querySelector('.tableBox')
const hobbiesArea = document.querySelector('.hobbies')
const deptArea = document.querySelector('.dept')
const submitBtn = document.querySelector('#submitBtn')
const promptElm = document.querySelector('.prompt')


const nameInput = document.querySelector('#name')  // input
const idNumberInput = document.querySelector('#idNumber')
const deptInput = document.querySelector('.dept input[required]')
const selfIntroductionInput = document.querySelector('textarea[name="info"]')
// 表单页


// 表格页
const mainColor = '#002fa7'
const secondColor = '#c8c7c5'
const thS = document.querySelectorAll('th')
const nameTr = document.querySelector('#nameTr')

const nameTd = document.querySelector('#nameTr td:last-child')
const idNumberTd = document.querySelector('#idNumberTr td:last-child')
const birthdayTd = document.querySelector('#birthdayTr td:last-child')
const genderTd = document.querySelector('#genderTr td:last-child')
const deptTd = document.querySelector('#deptTr td:last-child')
const hobbiesTd = document.querySelector('#hobbiesTr td:last-child')
const selfIntroductionTextArea = document.querySelector('#awesomeTextarea')

const backBtn = document.querySelector('#backBtn')
// 表格页




// 表单页 美化 submit按钮
deptArea.addEventListener('click', function (e) {  // 让首个 dept input 显示所选的班级并高亮
  if (e.target.tagName === 'INPUT' && e.target.required === false) {
    deptInput.classList.add('active')
    deptInput.value = e.target.value

    if (document.querySelector('.anm')) {
      document.querySelector('.anm').classList.remove('anm')  // 取消红色边框闪烁警告
    }
  }
})

submitBtn.addEventListener('click', function (e) {  // submit 翻页
  e.preventDefault()
  if (isDataValid()) {  // 检查数据合法性函数
    backBtn.classList.remove('active')  // 移除通过backspace触发时的backBtn按钮高亮效果
    formBox.classList.add('moveLeft')
    tableBox.classList.add('moveLeft')
    writeData()
  }
})

function promptInit() {  // prompt 位置初始化
  promptElm.style.top = hobbiesArea.offsetTop + box.offsetTop + 'px'
  promptElm.style.left = box.offsetLeft + 'px'
}

promptInit()

window.addEventListener('resize', function () {
  promptInit()
} )

hobbiesArea.addEventListener('mouseenter', function () {
  setTimeout(() => {
      document.querySelector('.prompt').style.opacity = 0
  }, 3000);
})

setTimeout(() => {
    document.querySelector('.prompt').style.opacity = 0
}, 30000);
// 表单页 美化 submit按钮



// 表格页 美化 back按钮
nameTr.addEventListener('mouseenter', function () {  // hover name tr 高亮 th 下边框
  thS.forEach(function (th) {
    th.classList.add('nameTrHover')
  })
})

nameTr.addEventListener('mouseleave', function () {  // 鼠标离开 name tr 取消高亮 th 下边框
  thS.forEach(function (th) {
    th.classList.remove('nameTrHover')
  })
})

backBtn.addEventListener('click', function () {  // back 翻页 回退
  this.classList.add('active')  // 通过backspace触发时的backBtn按钮高亮效果
  formBox.classList.remove('moveLeft')
  tableBox.classList.remove('moveLeft')
})

document.addEventListener('keydown', function (e) {  // 防止误删input数据. 当页面处在表格页,而焦点却在input里
  if (e.key === 'Backspace' && document.querySelector('.moveLeft')) {
    e.preventDefault()
  }
})

document.addEventListener('keyup', function (e) {  // Backspace backBtn 快捷键
  if (e.key === 'Backspace' && document.querySelector('.moveLeft')) {
    backBtn.click()
  }
})
// 表格页 美化 back按钮



// 检查数据合法性
function isDataValid() {
    function isNameValid() {
      if (nameInput.value.trim() === '') {
        return false
      }
      return true
    }

    function isdIdNumberValid() {
      if (idNumberInput.value.length !== 18) {
        return false
      }
      return true
    }

    function isDeptValid() {
      if (!document.querySelector('input[type="radio"].active')) {
        return false 
      }
      return true
    }
    

    if (!isNameValid()) {
      alert('姓名不能为空')
      nameInput.focus()
      return false
    }

    if (!isdIdNumberValid()) {
      alert('请输入有效的身份证号')
      idNumberInput.focus()
      return false
    }

    if (!isDeptValid()) {
      alert('请选择班级')

      if (document.querySelector('.anm')) {
        document.querySelector('.anm').classList.remove('anm')
      }

      setTimeout(() => {
        deptInput.classList.add('anm')
      }, 10);

      return false
    }

    return true

  // 	if (!isNameValid()) {
  // 		// 给 name input 加 inputInvalid 类
  // 		// 	1. 全变红
  // 		// 	2. 右边icon透明度=1
  // 		// 	3. 添加鼠标焦点
  // 		alert('姓名不能为空')
  // 	} else if (!isdIdNumberValid()) {
  // 		// 给 idNumber input 加 inputInvalid 类
  // 		// 	1. 全变红
  // 		// 	2. 右边icon透明度=1
  // 		// 	3. 添加鼠标焦点
  // 		alert('请输入有效的身份证号')
  // 	} else if (!isDeptValid()) {
  // 		// 给 dept 加 inputInvalid 类
  // 		// 	1. inputInvalid:before 伪元素
  // 		//    (1). PC: 从 input 中滑出到表单左侧
  // 		//		(2). Mobile: '爱好' 的右上方
  // 		// 	2. 给 dept 添加动画----红色边框闪几下
  // 		alert('请选择班级')
  // 	} else {

  // 	}
}
// 检查数据合法性



// 数据写入表格
function writeData() {

  function getHobbies() {  // 获取和拼接爱好
    const hobbiesInput = document.querySelectorAll('input[type="checkbox"]:checked')  // 点击完 submit 再创建 (放在writeDate()里)
    let hobbies = ''
    if (hobbiesInput.length !== 0) {
      for (let i = 0; i < hobbiesInput.length; i++) {
          hobbies += i === hobbiesInput.length - 1 ? hobbiesInput[i].value : hobbiesInput[i].value + ', '
      }
      return hobbies
    }	else {
      return '没有'
    }
  }

  function getBirthday() {  // 获取生日
    const birthday = idNumberInput.value.slice(6, 14)  // 生日
    return birthday.slice(0, 4) + '-' + birthday.slice(4, 6) + '-' + birthday.slice(6, birthday.length)
  }

  function getGender() {  // 获取性别
    const genderNum = idNumberInput.value[16]
    if (genderNum % 2 === 0) {
      return '女'
    }
    return '男'
  }

  nameTd.innerHTML = nameInput.value
  idNumberTd.innerHTML = idNumberInput.value
  birthdayTd.innerHTML = getBirthday()
  genderTd.innerHTML = getGender()
  deptTd.innerHTML = deptInput.value
  hobbiesTd.innerHTML = getHobbies()
  selfIntroductionTextArea.innerHTML = selfIntroductionInput.value === '' ? '没有' : selfIntroductionInput.value // FUCK!!!
}
// 数据写入表格