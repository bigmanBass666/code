// pages/grammar/grammar.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
    num: 1,
    userInfo: {
      id: 1,
      name: 'melody',
      test1: 'test1 string',
      test2: 'test2 string'
    },
  },

  // setData() 修改数据
  addNum() {
    this.setData({
      num: this.data.num + 1
    })
  },

  // setData() 修改对象数据
  updateObj(e) {
    // ES6 展开运算符
    const _userInfo = this.data.userInfo
    let userInfo = {}

    if (e.target.dataset.way == 1) {
      userInfo = {
        ..._userInfo,
        id: _userInfo.name,
        name: _userInfo.id
      }
    }
    else if (e.target.dataset.way == 2) {
      userInfo = Object.assign(
        this.data.userInfo,
        { id: _userInfo.name },
        { name: _userInfo.id }
      )
    }

    this.setData({
      userInfo
    })
  },

  // delete关键字删除单个属性
  deleteSingle(e) {
    const key = e.target.dataset.key

    if (key == 'id') {
      delete this.data.userInfo.id
    }
    else if (key == 'name') {
      delete this.data.userInfo.name
    }

    this.setData({
      userInfo: this.data.userInfo
    })
  },

  // 新增属性
  addAttr() {
    const userInfo = {
      ...this.data.userInfo,
      id: 1,
      name: 'melody'
    }

    this.setData({
      userInfo
    })
  },

  deleteMultiple() {
    const { id, test1, test2, ...rest } = this.data.userInfo

    this.setData({
      userInfo: rest
    })
  },

  resetUserInfo() {
    const userInfo = {
      id: 1,
      name: 'melody',
      test1: 'test1 string',
      test2: 'test2 string'
    }

    this.setData({
      userInfo
    })
  },
})