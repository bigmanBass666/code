// index.js
const defaultAvatarUrl = 'https://mmbiz.qpic.cn/mmbiz/icTdbqWNOwNRna42FI242Lcia07jQodd2FJGIYQfG0LAJGFxM4FbnQP6yfMxBgJ0F3YRqJCJ1aPAK2dQagdusBZg/0'

Page({
  data: {
    info: 'Raindrop, drop top.',
    imgSrc: '../img/lilac.jpg',
    randomNum: Math.random() * 10,
    randomNumFixed: Math.random().toFixed(2),

    count: 0,

    // 实现文本框和 data 之间的数据同步
    msg: 'Smoking on cookie in the hotbox.',

    // 条件渲染
    type: 1,

    // 列表渲染
    arr1: ['apple', 'orange', 'melon', 'shit'],
    // wx:key
    userList: [
      {id: 1, name: 'red'},
      {id: 2, name: 'green'},
      {id: 3, name: 'yellow'}
    ]
  },

  gotoHome() {
    wx.switchTab({
      url: '/pages/home/home',
    })
  },
  
  gotoLogs() {
    wx.navigateTo({
      url: '/pages/logs/logs',
    })
  },
  
  // 发起get请求
  getInfo() {
    wx.request({
      url: 'https://api.qqsuu.cn/api/dm-bulletin',
      method: 'GET',
      
      // 如果有参数
      // data:{
      //   key: value
      // },

      success: (resp) => {
        console.log(resp.data);
      }
    })
  },

  // 发起post请求
  postInfo() {
    wx.request({
      url: 'https://api.qqsuu.cn/api/dm-bulletin',
      method: 'POST',
      success: (resp) => {
        console.log(resp.data);
      }
    })
  },

  inpHandler(e) {
    this.setData({
      msg: e.detail.value
    })
    
    console.log(this.data.msg);
  },

  inputHandler(e) {
    console.log(e.detail.value);
  },
  
  btnTap2(e) {
    this.setData({
      count: this.data.count + e.target.dataset.info
    })
  },
  
  changeCount() {
    this.setData({
      count: this.data.count + 1
    })
  },
  
  btnTapHandler(e) {
    console.log(e);
  },
  
  onLoad: function (params) {
    this.getInfo()
    this.postInfo()
  } 
})
